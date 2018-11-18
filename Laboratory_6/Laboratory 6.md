# Laboratory-nr6

Topic: CREAREA TABELELOR ȘI INDECȘILOR

## Task 1
### Sa se scrie o instructiune T-SQL, care ar popula co Joana Adresa _ Postala _ Profesor din tabelul profesori cu valoarea 'mun. Chisinau', unde adresa este necunoscuta.
![lab6 1](https://user-images.githubusercontent.com/43128425/47968144-4eed5080-e06e-11e8-9465-b6441941d5a9.PNG)
## Task 2
### Sa se modifice schema tabelului grupe, ca sa corespunda urmatoarelor cerinte:
### a) Campul Cod_ Grupa sa accepte numai valorile unice ~i sa nu accepte valori necunoscute.
### b) Sa se tina cont ca cheie primarii, deja, este definitii asupra coloanei Id_ Grupa.
![lab6 2](https://user-images.githubusercontent.com/43128425/48674995-a9e97200-eb5b-11e8-96fd-efe582104cef.PNG)
## Task 3
### La tabelul grupe, sa se adauge 2 coloane noi Sef_grupa ~i Prof_Indrumator, ambele de tip INT. Sii se populeze campurile nou-create ### cu cele mai potrivite candidaturi ill baza criteriilor de maijos:
### a) $eful grupei trebuie sa aiba cea mai buna reu~itii (medie) din grupa la toate formele de evaluare ~i la toate disciplinele. Un   ### student nu poate fi ~ef de grupa la mai multe grupe.
### b) Profesorul fndrumator trebuie sa predea un numiir maximal posibil de discipline la grupa data. Daca nu existii o singurii 
### candidaturii, care corespunde primei cerinte, atunci este ales din grupul de candidati acel cu identificatorul (Id_Profesor)      ### minimal. Un profesor nu poate fi illdrumator la mai multe grupe.
### c) Sii se scrie instructiunile ALTER, SELECT, UPDATE necesare pentru crearea coloanelor in tabelul grupe, pentru selectarea
### candidatilor și inserarea datelor . .
![lab6 3](https://user-images.githubusercontent.com/43128425/48675275-9d671880-eb5f-11e8-9903-cb3a5953d9db.PNG)
![lab6 3 1](https://user-images.githubusercontent.com/43128425/48675277-a1933600-eb5f-11e8-8a9d-f791daff22b7.PNG)
## Task 4
### 4. Sa se scrie o instructiune T-SQL, care ar mari toate notele de evaluare șefilor de grupe cu un
### punct. Nota maximala (10) nu poate fi miirita.
![lab6 4](https://user-images.githubusercontent.com/43128425/48675278-a48e2680-eb5f-11e8-91a3-d8b8e4db6ee3.PNG)
## Task 5
### Sa se creeze un tabel profesori_new, care include urmatoarele coloane: Id_Profesor,
### Nume _ Profesor, Prenume _ Profesor, Localitate, Adresa _ 1, Adresa _ 2.
a) Coloana Id_Profesor trebuie sa fie definita drept cheie primara și, ill baza ei, sa fie construit un index CLUSTERED.
b) Campul Localitate trebuie sa posede proprietatea DEF A ULT= 'mun. Chisinau'.
c) Sa se insereze toate datele din tabelul profesori ill tabelul profesori_new. Sa se scrie, cu acest scop, un numiir potrivit de instructiuni T-SQL. Datele trebuie sa fie transferate in felul urmator:
## Coloana-sursa                        Coloana-destinatie
### Id Profesor                          Id Profesor
### Nume Profesor                        Nume Profesor
### Prenume Profesor                     Prenume Profesor
### Adresa Postala Profesor              Localitate
### Adresa Postala Profesor              Adresa 1
### Adresa Pasta/a Profesor              Adresa 2
in coloana Localitate sii fie inserata doar informatia despre denumirea localitiitii din
coloana-sursa Adresa_Postala_Profesor. in coloana Adresa_l, doar denumirea striizii. in
coloanaAdresa_2, sii se piistreze numiirul casei și (posibil) a apartamentului.
![lab6 5](https://user-images.githubusercontent.com/43128425/48675549-d785e980-eb62-11e8-8d22-33106c41231b.PNG)
![lab6 5 1](https://user-images.githubusercontent.com/43128425/48675550-d785e980-eb62-11e8-840d-d8565fae0ebf.PNG)
![lab6 5 2](https://user-images.githubusercontent.com/43128425/48675548-d785e980-eb62-11e8-8558-b54e936c3c84.PNG)
## Task 6
### Sa se insereze datele in tabelul orarul pentru Grupa= 'CIBJ 71' (Id_ Grupa= 1) pentru ziua de luni. Toate lectiile vor avea loc ill ### blocul de studii 'B'. Mai jos, sunt prezentate detaliile deinserare:
### (ld_Disciplina = 107, Id_Profesor= 101, Ora ='08:00', Auditoriu = 202);
### (Id_Disciplina = 108, Id_Profesor= 101, Ora ='11:30', Auditoriu = 501);
### (ld_Disciplina = 119, Id_Profesor= 117, Ora ='13:00', Auditoriu = 501);
![lab6 6](https://user-images.githubusercontent.com/43128425/48675970-bf18cd80-eb68-11e8-8be9-e2e3bbdea6f9.PNG)
## Task 7
### Sii se scrie expresiile T-SQL necesare pentru a popula tabelul orarul pentru grupa INFl 71 ,ziua de luni.
### Datele necesare pentru inserare trebuie sa fie colectate cu ajutorul instructiunii/instructiunilor
### SELECT și introduse in tabelul-destinatie, ~tiind ca:
### lectie #1 (Ora ='08:00', Disciplina = 'Structuri de date si algoritmi', Profesor ='Bivol Ion')
### lectie #2 (Ora ='11 :30', Disciplina = 'Programe aplicative', Profesor ='Mircea Sorin')
### lectie #3 (Ora ='13:00', Disciplina ='Baze de date', Profesor = 'Micu Elena')
![lab6 7](https://user-images.githubusercontent.com/43128425/48675973-c3dd8180-eb68-11e8-8d94-decff4365697.PNG)
