# Laboratory-nr6

Topic: CREAREA TABELELOR ȘI INDECȘILOR

## Task 1
### Sa se scrie o instructiune T-SQL, care ar popula co Joana Adresa _ Postala _ Profesor din tabelul profesori cu valoarea 'mun. Chisinau', unde adresa este necunoscuta.
![lab6 1](https://user-images.githubusercontent.com/43128425/47968144-4eed5080-e06e-11e8-9465-b6441941d5a9.PNG)
## Task 2
### Sa se modifice schema tabelului grupe, ca să corespundă următoarelor cerințe:
### a) Câmpul Cod_ Grupa să accepte numai valorile unice și sâ nu accepte valori necunoscute.
### b) Sa se țina cont ca cheie primarii, deja, este definiții asupra coloanei Id_ Grupa.
![lab6 2](https://user-images.githubusercontent.com/43128425/48674995-a9e97200-eb5b-11e8-96fd-efe582104cef.PNG)
## Task 3
### La tabelul grupe, sa se adauge 2 coloane noi Sef_grupa și Prof_Indrumator, ambele de tip INT. Să se populeze cmpurile nou-create  ### cu cele mai potrivite candidaturi in baza criteriilor de mai jos:

<p> a) Șeful grupei trebuie sa aibă cea mai bună reușită (medie) din grupă la toate formele de evaluare și la toate disciplinele. Un  student nu poate fi șef de grupă la mai multe grupe.</p>

<p> b) Profesorul îndrumător trebuie sa predea un număr maximal posibil de discipline la grupa dată. Daca nu există o singură  candidatură, care corespunde primei cerințe, atunci este ales din grupul de candidați acel cu identificatorul (Id_Profesor) minimal. Un profesor nu poate fi indrumător la mai multe grupe.</p>

<p> c) Să se scrie instrucțiunile ALTER, SELECT, UPDATE necesare pentru crearea coloanelor în tabelul grupe, pentru selectarea candidaților și inserarea datelor.</p>

![lab6 3](https://user-images.githubusercontent.com/43128425/48675275-9d671880-eb5f-11e8-9903-cb3a5953d9db.PNG)
![lab6 3 1](https://user-images.githubusercontent.com/43128425/48675277-a1933600-eb5f-11e8-8a9d-f791daff22b7.PNG)
## Task 4
### 4. Să se scrie o instrucțiune T-SQL, care ar mări toate notele de evaluare șefilor de grupe cu un
### punct. Nota maximală (10) nu poate fi mărită.
![lab6 4](https://user-images.githubusercontent.com/43128425/48675278-a48e2680-eb5f-11e8-91a3-d8b8e4db6ee3.PNG)
## Task 5
### Să se creeze un tabel profesori_new, care include urmatoărele coloane: Id_Profesor,
### Nume _ Profesor, Prenume _ Profesor, Localitate, Adresa _ 1, Adresa _ 2.
<p> a) Coloana Id_Profesor trebuie să fie definită drept cheie primară și, in baza ei, să fie construit un index CLUSTERED.</p>
<p> b) Câmpul Localitate trebuie să posede proprietatea DEFAULT= 'mun. Chisinau'.</p>
<p> c) Sa se insereze toate datele din tabelul profesori in tabelul profesori_new. Să se scrie, cu acest scop, un număr potrivit de instrucțiuni T-SQL.</p>

### Datele trebuie sa fie transferate în felul următor:
## Coloana-sursa                        Coloana-destinatie
### Id Profesor                          Id Profesor
### Nume Profesor                        Nume Profesor
### Prenume Profesor                     Prenume Profesor
### Adresa Postala Profesor              Localitate
### Adresa Postala Profesor              Adresa 1
### Adresa Pasta/a Profesor              Adresa 2

in coloana Localitate sii fie inserata doar informatia despre denumirea localitiitii din
coloana-sursa Adresa_Postala_Profesor. in coloana Adresa_l, doar denumirea străzii. in
coloana Adresa_2, să se păstreze numărul casei și (posibil) a apartamentului.
![lab6 5](https://user-images.githubusercontent.com/43128425/48675549-d785e980-eb62-11e8-8d22-33106c41231b.PNG)
![lab6 5 1](https://user-images.githubusercontent.com/43128425/48675550-d785e980-eb62-11e8-840d-d8565fae0ebf.PNG)
![lab6 5 2](https://user-images.githubusercontent.com/43128425/48675548-d785e980-eb62-11e8-8558-b54e936c3c84.PNG)
## Task 6
### Să se insereze datele in tabelul orarul pentru Grupa= 'CIBJ 71' (Id_ Grupa= 1) pentru ziua de luni. Toate lecțiile vor avea loc in ### blocul de studii 'B'. Mai jos, sunt prezentate detaliile de inserare:
### (ld_Disciplina = 107, Id_Profesor= 101, Ora ='08:00', Auditoriu = 202);
### (Id_Disciplina = 108, Id_Profesor= 101, Ora ='11:30', Auditoriu = 501);
### (ld_Disciplina = 119, Id_Profesor= 117, Ora ='13:00', Auditoriu = 501);
![lab6 6](https://user-images.githubusercontent.com/43128425/48675970-bf18cd80-eb68-11e8-8be9-e2e3bbdea6f9.PNG)
## Task 7
### Să se scrie expresiile T-SQL necesare pentru a popula tabelul orarul pentru grupa INFl 71 ,ziua de luni.
### Datele necesare pentru inserare trebuie sa fie colectate cu ajutorul instrucțiunii/instrucțiunilor
### SELECT și introduse in tabelul-destinatie, știind că:
### lectie #1 (Ora ='08:00', Disciplina = 'Structuri de date si algoritmi', Profesor ='Bivol Ion')
### lectie #2 (Ora ='11 :30', Disciplina = 'Programe aplicative', Profesor ='Mircea Sorin')
### lectie #3 (Ora ='13:00', Disciplina ='Baze de date', Profesor = 'Micu Elena')
![lab6 7](https://user-images.githubusercontent.com/43128425/48675973-c3dd8180-eb68-11e8-8d94-decff4365697.PNG)
