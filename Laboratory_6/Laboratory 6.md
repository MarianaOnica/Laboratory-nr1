# Laboratory-nr6

Topic: CREAREA TABELELOR ȘI INDECȘILOR

### Task 1
## Sa se scrie o instructiune T-SQL, care ar popula co Joana Adresa _ Postala _ Profesor din tabelul profesori cu valoarea 'mun. Chisinau', unde adresa este necunoscuta.
![lab6 1](https://user-images.githubusercontent.com/43128425/47968144-4eed5080-e06e-11e8-9465-b6441941d5a9.PNG)
### Task 2
## Sa se modifice schema tabelului grupe, ca sa corespunda urmatoarelor cerinte:
## a) Campul Cod_ Grupa sa accepte numai valorile unice ~i sa nu accepte valori necunoscute.
## b) Sa se tina cont ca cheie primarii, deja, este definitii asupra coloanei Id_ Grupa.
![lab6 2](https://user-images.githubusercontent.com/43128425/48674995-a9e97200-eb5b-11e8-96fd-efe582104cef.PNG)
### Task 3
## La tabelul grupe, sa se adauge 2 coloane noi Sef_grupa ~i Prof_Indrumator, ambele de tip INT. Sii se populeze campurile nou-create cu  ## cele mai potrivite candidaturi ill baza criteriilor de maijos:
## a) $eful grupei trebuie sa aiba cea mai buna reu~itii (medie) din grupa la toate formele de evaluare ~i la toate disciplinele. Un      ## student nu poate fi ~ef de grupa la mai multe grupe.
## b) Profesorul fndrumator trebuie sa predea un numiir maximal posibil de discipline la grupa data. Daca nu existii o singurii 
## candidaturii, care corespunde primei cerinte, atunci este ales din grupul de candidati acel cu identificatorul (Id_Profesor) minimal. Un ## profesor nu poate fi illdrumator la mai multe grupe.
## c) Sii se scrie instructiunile ALTER, SELECT, UPDATE necesare pentru crearea coloanelor in tabelul grupe, pentru selectarea candidatilor ## și inserarea datelor . .

