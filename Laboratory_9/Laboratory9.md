# Laboratory-nr9

Topic: Proceduri stocate și funcții definite de utilizator

## Task 1
### Sa se creeze proceduri stocate in baza exercitiilor (2 exercitii) din capitolul 4. Parametrii de
### intrare trebuie sa corespunda criteriilor din clauzele WHERE ale exercitiilor respective .
![lab9 1 1](https://user-images.githubusercontent.com/43128425/49003798-613d4480-f16b-11e8-8f5f-78ec58bfff2d.PNG)

![lab9 1 2](https://user-images.githubusercontent.com/43128425/49003797-613d4480-f16b-11e8-84db-a065dbaefc2d.PNG)
## Task 2
### Sa se creeze o procedura stocata, care nu are niciun parametru de intrare și poseda un
### parametru de ieșire. Parametrul de ieșire trebuie sa returneze numarul de studenti, care nu au
### sustinut cel putin o forma de evaluare (nota mai mica de 5 sau valoare NULL).
![lab9 2](https://user-images.githubusercontent.com/43128425/49356710-3c018680-f6d5-11e8-908a-526bc4e36e85.PNG)

## Task 3
### Sa se creeze o procedura stocata, care ar insera in baza de date informatii despre un student
### nou. In calitate de parametri de intrare sa serveasca datele personale ale studentului nou si
### Cod_ Grupa. Sa se genereze toate intrarile-cheie necesare in tabelul studenti_reusita. Notele
### de evaluare sa fie inserate ca NULL.
![lab9 3 1](https://user-images.githubusercontent.com/43128425/49356711-3c018680-f6d5-11e8-9173-d43480c2e0df.PNG)
![lab9 3 2](https://user-images.githubusercontent.com/43128425/49356715-428ffe00-f6d5-11e8-9828-7995876c91b8.PNG)

## Task 4
### Fie ca un profesor se elibereaza din functie la mijlocul semestrului. Sa se creeze o procedura
### stocata care ar reatribui inregistrarile din tabelul studenti_reusita unui alt profesor. Parametri
### de intrare: numele si prenumele profesorului vechi, numele si prenumele profesorului nou,
### disciplina. in cazul in care datele inserate sunt incorecte sau incomplete, sa se afiseze un
### mesaj de avertizare.
![lab9 4 1](https://user-images.githubusercontent.com/43128425/49402973-24b5ae00-f754-11e8-8185-4f47d986c69b.PNG)

![lab9 4 2](https://user-images.githubusercontent.com/43128425/49402974-24b5ae00-f754-11e8-82c9-b34a8f44a58c.PNG)

![lab9 4 3](https://user-images.githubusercontent.com/43128425/49402976-24b5ae00-f754-11e8-9879-5b31db09e1dc.PNG)

![lab9 4 4](https://user-images.githubusercontent.com/43128425/49402984-2bdcbc00-f754-11e8-8223-d5f354c590f0.PNG)
## Task 5
### Sa se creeze o procedura stocata care ar forma o lista cu primii 3 cei mai buni studenti la o
### disciplina, si acestor studenti sa le fie marita nota la examenul final cu un punct (nota
### maximala posibila este 10). in calitate de parametru de intrare, va servi denumirea disciplinei.
### Procedura sa returneze urmatoarele campuri: Cod_ Grupa, Nume_Prenume_Student,
### Disciplina, Nota Veche, Nota Noua.
![lab9 5 1](https://user-images.githubusercontent.com/43128425/49667542-1c1aeb80-fa64-11e8-8be0-565ef83450a3.PNG)

![lab9 5 2](https://user-images.githubusercontent.com/43128425/49667548-1fae7280-fa64-11e8-8428-5e23890a7018.PNG)

## Task 6
### Sa se creeze functii definite de utilizator in baza exercitiilor (2 exercitii) din capitolul 4.
### Parametrii de intrare trebuie sa corespunda criteriilor din clauzele WHERE ale exercitiilor
### respective.
![lab9 6 1](https://user-images.githubusercontent.com/43128425/49669066-ca289480-fa68-11e8-8965-63a3339eaf7a.PNG)

![lab9 6 2](https://user-images.githubusercontent.com/43128425/49669070-cdbc1b80-fa68-11e8-8f5d-0fbc6043b87a.PNG)

## Task 7
### Sa se scrie funcția care ar calcula vârsta studentului. Sa se definească următorul format al funcției: 
### <nume funcție>(<Data_Nastere_Student>).
![lab9 7](https://user-images.githubusercontent.com/43128425/49670532-a61b8200-fa6d-11e8-8ea5-a6e8f59ab8c5.PNG)

## Task 8
<h3> Sa se creeze o functie definită de utilizator, care ar returna datele referitoare la reușita unui student. Se definește următorul format al functiei:</h3>
## <nume funcție>(<Nume_Prenume_Student>). 
<h3>Să fie afișat tabelul cu următoarele câmpuri:Nume_Prenume_Student, Disticplina, Nota, Data_Evaluare.</h3>

![lab9 8](https://user-images.githubusercontent.com/43128425/49672325-5e97f480-fa73-11e8-90a8-cbde55a4ce85.PNG)

## Task 9
<h3> Se cere realizarea unei funcții definite de utilizator, care ar găsi cel mai sârguincios sau cel mai slab student dintr-o grupă. Se definește următorul format al funcției:<nume_funcție>(<Cod_ Grupa>, <is_good>). Parametrul <is_good> poate accepta valorile     "sârguincios" sau "slab", respectiv. Funcția să returneze un tabel cu următoarele câmpuri Grupa, Nume_Prenume_Student, Nota Medie , is_good. Nota Medie să fie cu precizie de 2 ecimale.</h3>
