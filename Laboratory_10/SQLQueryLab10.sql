--1. Sa se modifice declan~atorul inregistrare _ noua, in a§a fel, incat in cazul actualizarii
--auditoriului sa apara mesajul de informare, care, in afara de disciplina ~i ora, va afi~a codul
--grupei afectate, ziua, blocul, auditoriul vechi ~i auditoriul nou.
DROP TRIGGER IF EXISTS inregistrarea_noua 
GO 
CREATE TRIGGER inregistrare_noua ON plan_studii.orarul 
AFTER UPDATE
AS SET NOCOUNT ON
IF UPDATE(Auditoriu) 
SELECT 'La perechea disciplinei'+ UPPER(plan_studii.discipline.Disciplina)+' predata de profesorul '+
		CAST(inserted.Id_Profesor AS varchar(10))+ ' a grupei codul careia este ' + 
	    CAST(inserted.Id_Grupa AS varchar(10))+ ' in ziua ' + 
		CAST(inserted.Zi as varchar(10))+' de la ora ' +
		CAST(inserted.Ora AS varchar(10)) +' a fost tranferata din Auditoriul ' +
		CAST(deleted.Auditoriu AS varchar(10)) + ' Blocul '+ 
		CAST(inserted.Bloc as varchar(10)) + ' in Auditoriul ' +
		CAST(inserted.Auditoriu AS varchar(10))
FROM inserted , plan_studii.discipline , deleted 
where inserted.Id_Disciplina = plan_studii.discipline.Id_Disciplina
and deleted.Id_Disciplina = plan_studii.discipline.Id_Disciplina
GO 
UPDATE plan_studii.orarul SET Auditoriu=121 WHERE Zi='Luni'

--2. Sa se creeze declan~atorul, care ar asigura popularea corecta (consecutiva) a tabelelor studenti
--~i studenti_reusita, ~i ar permite evitarea erorilor la nivelul cheilor exteme.
use universitatea2

CREATE TRIGGER Lab10_ex2 ON studenti.studenti_reusita
INSTEAD OF INSERT
AS SET NOCOUNT ON
  INSERT INTO studenti.studenti_reusita 
  SELECT * FROM inserted
  WHERE Id_Student in (SELECT Id_Student FROM studenti.studenti)
  GO
  INSERT INTO reusita values (98, 101, 101, 1, 'Examen', null, null)

  select * from studentii where studentii.Id_Student= 98
  select * from reusita where reusita.Id_Student = 98

--3. Sa se creeze un declan~ator, care ar interzice mic~orarea notelor in tabelul studenti_reusita ~i
--modificarea valorilor campului Data_Evaluare, unde valorile acestui camp sunt nenule.
--Declan~atorul trebuie sa se lanseze, numai daca sunt afectate datele studentilor din grupa
--,,CIB 171 ". Se va afi~a un mesaj de avertizare in cazul tentativei de a incalca constrangerea.
DROP TRIGGER IF EXISTS modificare_nota
GO 
CREATE TRIGGER modificare_nota ON studenti.studenti_reusita
AFTER UPDATE
AS
SET NOCOUNT ON
 IF UPDATE(Nota)
DECLARE @id_grupa INT = (select Id_Grupa from grupe where Cod_Grupa='CIB171')
IF (SELECT AVG(Nota)	
	FROM deleted 
	WHERE Id_Grupa=@id_grupa AND Nota IS NOT NULL)>(SELECT AVG(Nota) 
													FROM inserted 
													WHERE Id_Grupa=@id_grupa AND Nota IS NOT NULL)
BEGIN
PRINT('Nu este posibila miscrorarea notelor pentru grupa CIB171')
ROLLBACK TRANSACTION
END
IF UPDATE(Data_Evaluare)
BEGIN 
PRINT 'Nu poti modifica campul Data_Evaluare'
ROLLBACK TRANSACTION
end
UPDATE reusita SET Nota=Nota-1 WHERE Id_Grupa= (select Id_Grupa from grupe where Cod_Grupa='CIB171')
UPDATE reusita SET Data_Evaluare='2018-01-25' WHERE Id_Grupa= (select Id_Grupa from grupe where Cod_Grupa='CIB171')
--4. Sa se creeze un declan~ator DDL care ar interzice modificarea coloanei ld_Disciplina in
--tabelele bazei de date universitatea cu afi~area mesajului respectiv.
DROP TRIGGER IF EXISTS interzice_modificare_col
GO 
CREATE TRIGGER interzice_modificare_col ON database
for Alter_table,Drop_table
as
SET NOCOUNT ON
DECLARE @Id_Disciplina varchar(255);
SET @Id_Disciplina= EVENTDATA().value('(/EVENT_INSTANCE/AlterTableActionList/*/Columns/Name)[1]','nvarchar(max)') 
IF @Id_Disciplina ='Disciplina'
BEGIN
PRINT('Nu putem modificata coloana Id_Disciplina');
ROLLBACK;
END 
go
	ALTER TABLE plan_studii.discipline 
	ALTER COLUMN Id_Disciplina varchar(255) 

--5. Sa se creeze un declan~ator DDL care ar interzice modificarea schemei bazei de date in afara
--orelor de lucru.
DROP TRIGGER IF EXISTS permite_OreDeLucru
GO
CREATE TRIGGER permite_OreDeLucru ON DATABASE
FOR ALTER_TABLE
AS
SET NOCOUNT ON
DECLARE @TimpulCurent TIME
DECLARE @Inceputul TIME
DECLARE @Sfarsitul TIME
SELECT @TimpulCurent = CONVERT(Time, GETDATE())
SELECT @Inceputul = '9:00:00'
SELECT @Sfarsitul = '18:00:00'

IF (@TimpulCurent < @Inceputul) OR (@TimpulCurent > @Sfarsitul)
BEGIN	
PRINT 'Baza de date nu PERMITE modificarea inafara orelor de lucru. Ora curenta: ' + cast(@TimpulCurent as VARCHAR(20))
ROLLBACK
END

alter table grupe add Nume varchar(49);

--6. Sa se creeze un declan~ator DDL care, la modificarea proprietatilor coloanei ld_Profesor
--dintr-un tabel, ar face schimbari asemanatoare in mod automat in restul tabelelor.
drop trigger if exists  modificare_Id_Profesor on database
go 
 CREATE TRIGGER modificare_Id_Profesor ON DATABASE
FOR ALTER_TABLE
AS
SET NOCOUNT ON
DECLARE @Id_profesor int
DECLARE @int_Imput varchar(500)
DECLARE @int_NewImput varchar(500)
DECLARE @den_Table varchar(50)
SELECT @Id_profesor=EVENTDATA().value('(/EVENT_INSTANCE/AlterTableActionList/*/Columns/Name)[1]','nvarchar(max)')
IF @Id_profesor= 'Id_Profesor'
BEGIN 
SELECT @int_Imput = EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]','nvarchar(max)')
SELECT @den_Table = EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]','nvarchar(max)')
SELECT @int_NewImput = REPLACE(@int_Imput, @den_Table, 'cadre_didactice.profesori'); EXECUTE (@int_NewImput)
SELECT @int_NewImput = REPLACE(@int_Imput, @den_Table, 'studenti.studenti_reusita'); EXECUTE (@int_NewImput)
PRINT 'Datele pe campul Id_Profesor au fost modificate in toate tabelele'
END
go	

ALTER TABLE cadre_didactice.profesori ALTER COLUMN Id_Profesor SMALLINT

