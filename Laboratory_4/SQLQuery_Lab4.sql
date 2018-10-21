--Furnizati numele ~i prenumele studentilor, care au studiat discipline cu un volum de lectii mai mic
--de 60 de ore, precum ~i profesorii (identificatorii) respectivi, care le-au predat.
Select Distinct Nume_Student, Prenume_Student,Nume_Profesor,Prenume_Profesor
from studenti INNER JOIN studenti_reusita on studenti.Id_Student=studenti_reusita.Id_Student,
	profesori INNER JOIN studenti_reusita as sr ON profesori.Id_Profesor=sr.Id_Profesor,
	discipline INNER JOIN studenti_reusita AS r ON discipline.Id_Disciplina=r.Id_Disciplina
WHERE Nr_ore_plan_disciplina<60;




--Fumizati numele, prenumele si media notelor pe grupe pentru studenti
Select distinct Nume_Student,Prenume_Student,AVG(Nota)AS MediaPeGrupe
From studenti_reusita INNER JOIN studenti ON studenti_reusita.Id_Student=studenti.Id_Student
group BY Nume_Student,Prenume_Student,Id_Grupa;




--Gasiti denumirile disciplinelor si media notelor pe disciplina. Afi~ati numai disciplinele cu mediimai mari de 7.0.
select distinct  Disciplina ,AVG(Nota) as MediaDisciplina
from discipline Inner join studenti_reusita on discipline.Id_Disciplina=studenti_reusita.Id_Disciplina
Group by  Disciplina 
Having AVG(Nota)>7.0


