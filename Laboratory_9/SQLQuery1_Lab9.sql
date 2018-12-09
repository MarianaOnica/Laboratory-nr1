--1. Sa se creeze proceduri stocate in baza exercitiilor (2 exercitii) din capitolul 4. Parametrii de
--intrare trebuie sa corespunda criteriilor din clauzele WHERE ale exercitiilor respective .
use universitatea2
go
drop procedure if exists procedure_1_ex16;
go
create procedure procedure_1_ex16
	@Nr_ore int = 60
as 
select distinct studenti.studenti.Nume_Student, studenti.studenti.Prenume_Student,studenti.studenti_reusita.Id_Profesor
from studenti.studenti_reusita ,studenti.studenti , plan_studii.discipline
where studenti.studenti_reusita.Id_Student= studenti.studenti.Id_student
and studenti.studenti_reusita.Id_Disciplina = plan_studii.discipline.Id_Disciplina
and plan_studii.discipline.Nr_ore_plan_disciplina < @Nr_ore;
execute procedure_1_ex16
--
use universitatea2
go
drop procedure if exists procedure_2_meu;
go
create procedure procedure_2_meu
	@nume varchar(255) = 'Dan',
	@prenume varchar(255) = 'David',
	@nota int = 9
as
select DISTINCT(plan_studii.discipline.Disciplina), plan_studii.discipline.Id_Disciplina, studenti.studenti_reusita.Nota
from studenti.studenti_reusita , studenti.studenti , plan_studii.discipline							
where studenti.studenti_reusita.Id_Student= studenti.studenti.Id_student
and studenti.studenti_reusita.Id_Disciplina= plan_studii.discipline.Id_Disciplina
and studenti.studenti.Nume_Student= @nume 
and studenti.studenti.Prenume_Student=@prenume 
and studenti.studenti_reusita.Nota = @nota
execute procedure_2_meu

--2. Sa se creeze o procedura stocata, care nu are niciun parametru de intrare ~i poseda un
--parametru de ie~ire. Parametrul de ie~ire trebuie sa returneze numarul de studenti, care nu au
--sustinut eel putin o forma de evaluare (nota mai mica de 5 sau valoare NULL).
DROP PROCEDURE IF EXISTS Ex_2Lab9;
GO

CREATE PROCEDURE Ex_2Lab9
   @nr_studenti SMALLINT = NULL OUTPUT
AS  
SELECT @nr_studenti =  COUNT(DISTINCT studenti.studenti_reusita.Id_Student) 
FROM studenti.studenti_reusita
WHERE Nota = NULL or Nota < 5 

DECLARE @nr_studenti SMALLINT
EXEC Ex_2Lab9 @nr_studenti OUTPUT
PRINT 'Numărul de studenti care nu au sustinut cel putin o forma de evaluare este = ' + cast(@nr_studenti as VARCHAR(255))
--3. Sa se creeze o procedura stocata, care ar insera in baza de date informatii despre un student
--nou. in calitate de parametri de intrare sa serveasca datele personale ale studentului nou ~i
--Cod_ Grupa. Sa se genereze toate intrarile-cheie necesare in tabelul studenti_reusita. Notele
--de evaluare sa fie inserate ca NULL.

DROP PROCEDURE IF EXISTS Ex_3Lab9
GO
CREATE PROCEDURE Ex_3Lab9 
@Id_Student INTEGER =99,
@nume_Student VARCHAR(50)='Mariana',
@prenume_Student VARCHAR(50)='Onica',
@birth_data DATE='1998-07-25',
@address VARCHAR(500)='satul Drasliceni',
@cod_grupa VARCHAR (255)='TI171',
@Id_grupa INT= NULL OUTPUT
AS
INSERT INTO studentii 
VALUES (@Id_Student, @nume_Student, @prenume_Student, @birth_data, @address)
INSERT INTO reusita
VALUES (@Id_Student,105,110,(SELECT Id_Grupa from grupe where Cod_Grupa=@cod_grupa),'Reusita curenta', NULL,'2018-12-02')
EXEC Ex_3Lab9 
go
select * from studentii
select * from reusita where Id_Student=99

--4. Fie ca un profesor se elibereaza din functie la mijlocul semestrului. Sa se creeze o procedura
--stocata care ar reatribui inregistrarile din tabelul studenti_reusita unui alt profesor. Parametri
--de intrare: numele ~i prenumele profesorului vechi, numele ~i prenumele profesorului nou,
--disciplina. in cazul in care datele inserate sunt incorecte sau incomplete, sa se afi~eze un
--mesaj de avertizare.
DROP PROCEDURE IF EXISTS Ex_4Lab9 
GO
CREATE PROCEDURE Ex_4Lab9 
@Nume_prof_vechi VARCHAR(255)= 'Avram',
@Prenume_prof_vechi VARCHAR(255)='Sanda',
@Nume_prof_nou VARCHAR(255)='Badiu',
@Prenume_prof_nou VARCHAR(255)='Alexandra',
@Disciplina VARCHAR(255)= 'Proiectarea sistemelor informatice'

AS
IF exists ( SELECT * FROM reusita  WHERE Id_Disciplina = (SELECT Id_Disciplina 
															FROM disciplinele
															WHERE Disciplina= @Disciplina)
									and Id_Profesor = (SELECT Id_Profesor 
													   FROM cadre_didactice.profesori
													   where Nume_Profesor = @Nume_prof_vechi and Prenume_Profesor= @Prenume_prof_vechi)
		  )								         
BEGIN 
UPDATE cadre_didactice.profesori SET Nume_Profesor = @Nume_prof_nou,
									Prenume_Profesor=@Prenume_prof_nou where Nume_Profesor = @Nume_prof_vechi
																			and Prenume_Profesor = @Prenume_prof_vechi
END
ELSE BEGIN  PRINT 'Something went wrong, check the input parameters'
END
EXEC Ex_4Lab9
select * from cadre_didactice.profesori 


select *
from cadre_didactice.profesori
where Nume_Profesor='Avram' and Prenume_Profesor='Sanda'
select *
from cadre_didactice.profesori,reusita
where cadre_didactice.profesori.Id_Profesor= reusita.Id_Profesor
and Nume_Profesor='Badiu' and Prenume_Profesor='Alexandra'

--5. Sa se creeze o procedura stocata care ar forma o lista cu primii 3 cei mai buni studenti la o
--disciplina, ~i acestor studenti sa le fie marita nota la examenul final cu un punct (nota
--maximala posibila este 10). in calitate de parametru de intrare, va servi denumirea disciplinei.
--Procedura sa returneze urmatoarele campuri: Cod_ Grupa, Nume_Prenume_Student,
--Disciplina, Nota Veche, Nota Noua.

DROP PROCEDURE IF EXISTS Ex_5Lab9
GO
CREATE PROCEDURE Ex_5Lab9 
@disciplina VARCHAR(50)='Sisteme de operare'
AS
DECLARE @studentList TABLE (Id_Student int, Media float)
INSERT INTO @studentList
	SELECT TOP (3) reusita.Id_Student, AVG(cast (Nota as float)) as Media
	FROM reusita, disciplinele
	WHERE disciplinele.Id_Disciplina = reusita.Id_Disciplina
	AND Disciplina = @disciplina
	GROUP BY reusita.Id_Student
	ORDER BY Media desc		
SELECT cod_grupa,
	studentii.Id_Student, 
	CONCAT(Nume_Student, ' ', Prenume_Student) as Nume, 
	Disciplina, 
	nota AS Nota_Veche, 
	iif(nota > 9, 10, nota + 1) AS Nota_Noua 
    FROM reusita, disciplinele, grupe, studentii
	WHERE disciplinele.id_disciplina = reusita.id_disciplina
	AND grupe.Id_Grupa = reusita.Id_Grupa
	AND  studentii.Id_Student = reusita.Id_Student
	AND studentii.Id_Student in (select Id_Student from @studentList)
	AND Disciplina = @disciplina
	AND Tip_Evaluare = 'Examen'
DECLARE @id_Disciplina SMALLINT =(SELECT  Id_Disciplina  FROM disciplinele
                                  WHERE   Disciplina = @disciplina)
UPDATE reusita
SET reusita.Nota = (CASE WHEN nota >= 9 THEN 10 ELSE nota + 1 END)
WHERE Tip_Evaluare = 'Examen'
AND Id_Disciplina = @id_Disciplina
AND Id_Student in (select Id_Student from @studentList)
go

execute Ex_5Lab9
--6. Sa se creeze functii definite de utilizator in baza exercitiilor (2 exercitii) din capitolul 4.
--Parametrii de intrare trebuie sa corespunda criteriilor din clauzele WHERE ale exercitiilor
--respective.
DROP FUNCTION IF EXISTS Ex_6_1_Lab9
GO
CREATE FUNCTION Ex_6_1_Lab9 (@Nr_ore_pe_disciplina  SMALLINT )
RETURNS TABLE
AS
RETURN
(select distinct studentii.Nume_Student, studentii.Prenume_Student, reusita.Id_Profesor
from reusita , studentii , plan_studii.discipline
where reusita.Id_Student= studentii.Id_student
 and reusita.Id_Disciplina = plan_studii.discipline.Id_Disciplina
 and Nr_ore_plan_disciplina < @Nr_ore_pe_disciplina)
go
select *from Ex_6_1_Lab9(60)


DROP FUNCTION IF EXISTS Ex_6_2_Lab9
GO
CREATE FUNCTION Ex_6_2_Lab9 (@Numele_Student VARCHAR(55),@Prenume_Student VARCHAR(55), @Nota SMALLINT )
RETURNS TABLE
AS
RETURN
(select DISTINCT(plan_studii.discipline.Disciplina), plan_studii.discipline.Id_Disciplina, reusita.Nota
from reusita , studentii , plan_studii.discipline							
where reusita.Id_Student= studentii.Id_student
and reusita.Id_Disciplina= plan_studii.discipline.Id_Disciplina
and studentiI.Nume_Student= @Numele_Student 
and studentii.Prenume_Student= @Prenume_Student
and reusita.Nota = @Nota)

select * from Ex_6_2_Lab9 ('Dan','David',9)

--7. Sa se scrie functia care ar calcula varsta studentului. Sa se defineasca urmatorul format al
--functiei: <nume Juncfie>(<Data _ Nastere _Student>).


DROP FUNCTION IF EXISTS Ex_7_Lab9
GO
CREATE FUNCTION Ex_7_Lab9 (@Data_Nastere_Student DATE )
RETURNS INT
 BEGIN
 DECLARE @Student_Age INT
 SELECT @Student_Age = (SELECT (YEAR(GETDATE()) - YEAR(@Data_Nastere_Student) - CASE 
 						WHEN (MONTH(@Data_Nastere_Student) >= MONTH(GETDATE())) AND  DAY(@Data_Nastere_Student)> DAY(GETDATE())
						THEN  1
						ELSE  0
						END))
 RETURN @Student_Age
 END
 select dbo.Ex_7_Lab9('1995.06.23') as Vârsta_persoanei

-- 8. Sa se creeze o functie definita de utilizator, care ar returna datele referitoare la reW?ita unui
--student. Se define~te urmatorul format al functiei: <nume Juncfie>
--(<Nume_Prenume_Student>). Sa fie afi~at tabelul cu urmatoarele campuri:
--Nume_Prenume_Student, Disticplina, Nota, Data_Evaluare.
DROP FUNCTION IF EXISTS Ex_8_Lab9
 GO
CREATE FUNCTION Ex_8_Lab9(@Nume_Prenume_Student VARCHAR(255))
RETURNS TABLE
AS
RETURN
(SELECT CONCAT(Nume_Student,'  ', Prenume_Student) AS Nume_Prenume_Student ,Disciplina, Nota, Data_Evaluare
FROM reusita, studentii, plan_studii.discipline 
WHERE reusita.Id_Student=studentii.Id_Student
	and  plan_studii.discipline.Id_Disciplina=reusita.Id_Disciplina
	and reusita.Id_Student = ( SELECT Id_Student FROM studentii WHERE CONCAT(Nume_student,'  ',Prenume_student)= @Nume_Prenume_Student)
)
GO
DECLARE @NUME_PRENUME_STUDENT VARCHAR(255)
SET @NUME_PRENUME_STUDENT=(SELECT CONCAT(Nume_Student,'  ',Prenume_Student)
						FROM studentii
						WHERE studentii.Nume_Student='Danci')
SELECT * FROM  Ex_8_Lab9(@NUME_PRENUME_STUDENT)
--9. Se cere realizarea unei functii definite de utilizator, care ar gasi eel mai sarguincios sau eel
--mai slab student dintr-o grupa. Se define~te urmatorul format al functiei: <numeJuncfie>
--(<Cod_ Grupa>, <is_good>). Parametrul <is_good> poate accepta valorile "sarguincios" sau
--"slab", respectiv. Functia sa returneze un tabel cu urmatoarele campuri Grupa,
--Nume_Prenume_Student, Nota Medie , is_good. Nota Medie sa fie cu precizie de 2
--zecimale.
DROP FUNCTION IF EXISTS Ex_9_Lab9
GO 
CREATE FUNCTION Ex_9_Lab9(@Cod_Grupa VARCHAR(50), @Is_Good VARCHAR(50))
RETURNS @TABLE TABLE
        (Nume_Prenume_Student VARCHAR(255), Cod_Grupa VARCHAR(10), Nota_Medie DECIMAL(4,2), Is_Good VARCHAR(20)) AS
BEGIN
IF @Is_Good IN ('Sârguincios')
   INSERT @TABLE
   SELECT top(1) CONCAT(Nume_Student,' ',Prenume_Student) AS Nume_Prenume_Student, Cod_Grupa AS Grupa, cast(avg(nota*1.0)as decimal(4,2)) AS Nota_Medie, @Is_Good AS Is_Good
    FROM reusita, grupe,studentii 
	WHERE reusita.Id_Student=studentii.Id_Student 
		  and reusita.Id_Grupa=grupe.Id_Grupa
		  and Cod_grupa= @COD_GRUPA
		  AND Nota IS NOT NULL
	GROUP BY Nume_Student,Prenume_Student,Cod_Grupa
	ORDER BY Nota_Medie DESC
ELSE IF @Is_Good IN ('Slab')
    INSERT @TABLE
	SELECT top(1) CONCAT(Nume_Student,' ',Prenume_Student) AS Nume_Prenume_Student, Cod_Grupa AS Grupa, cast(avg(nota*1.0)as decimal(4,2)) AS Nota_Medie, @Is_Good AS Is_Good
    FROM reusita, grupe,studentii 
	WHERE reusita.Id_Student=studentii.Id_Student 
		  and reusita.Id_Grupa=grupe.Id_Grupa
		  and Cod_grupa= @COD_GRUPA
		  AND Nota IS NOT NULL
	GROUP BY Nume_Student,Prenume_Student,Cod_Grupa
	ORDER BY Nota_Medie ASC
RETURN
END
GO
SELECT * FROM Ex_9_Lab9('INF171','Sârguincios')
SELECT * FROM Ex_9_Lab9('INF171','Slab')

 