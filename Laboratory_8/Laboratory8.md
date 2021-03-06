# Laboratory-nr8

Topic: Administrarea viziunilor și a expresiilor-tabel

## Task 1
### Sa se creeze doua viziuni in baza interogarilor formulate in doua exercitii indicate din capitolul
### 4. Prima viziune sa fie construita in Editorul de interogari, iar a doua, utilizand View
### Designer.
![lab8 1 1](https://user-images.githubusercontent.com/43128425/48831795-49874a00-ed80-11e8-8bce-f356db58f4fc.PNG)
![lab8 1 2](https://user-images.githubusercontent.com/43128425/48831803-4e4bfe00-ed80-11e8-90f8-328236909c41.PNG)
![lab8 1 3](https://user-images.githubusercontent.com/43128425/48831802-4db36780-ed80-11e8-9c0c-d7c8933ec148.PNG)

## Task 2
### 2. Sa se scrie cate un exemplu de instructiuni INSERT, UPDATE, DELETE asupra viziunilor
### create. Sa se adauge comentariile respective referitoare la rezultatele executarii acestor
### instructiuni.
![lab8 2 1](https://user-images.githubusercontent.com/43128425/48889689-5b7bf200-ee3f-11e8-9e51-63ce93ba25d6.PNG)

În această imagine este prezentă o eroare la executarea instrucțiunii update pentru view-ul creat anterior, deoarece el afișează informația într-un tabel în urma unor interacțiuni din alte tabele . Astfel un view nu are acces la operațiile de creare a viziunii. Dacă s-ar fi creat viziunea în baza la un singur tabel,atunci ar fi posibil de executat update-ul.
#####
![lab8 2 2](https://user-images.githubusercontent.com/43128425/48889690-5b7bf200-ee3f-11e8-9a8b-6d2cde859126.PNG)

Nu poate fi realizată inserarea in view-ul creat anterior , deoarece elementele pentru înserate trebuie înserate mai întâi în tabelele din care se crează view-ul, dar deși noi nu avem acces la tabele, nu se poate realiza înserarea elementelor.
#####
![lab8 2 3](https://user-images.githubusercontent.com/43128425/48891524-42297480-ee44-11e8-982a-b19909764148.PNG)
La instrucțiunea Delete, deasemenea ne confruntăm cu problema tabelelor din spatele view-ului. Astfel nu se poate efectua această instrucțiune

## Task 3
### Sa se scrie instructiunile SQL care ar modifica viziunile create (in exercitiul 1) in așa fel, incat
### sa nu fie posibila modificarea sau ștergerea tabelelor pe care acestea sunt definite și viziunile
### sa nu accepte operatiuni DML, daca conditiile clauzei WHERE nu sunt satis:facute.
![lab8 3 1](https://user-images.githubusercontent.com/43128425/48982562-f2210b00-f0ec-11e8-96e8-0951e7f8e791.PNG)
![lab8 3 2](https://user-images.githubusercontent.com/43128425/48982563-f2210b00-f0ec-11e8-91c3-64e869982b0a.PNG)

## Task 4
### Sa se scrie instructiunile de testare a proprietatilor noi definite.
For first view
![lab8 4 1](https://user-images.githubusercontent.com/43128425/48982564-f2b9a180-f0ec-11e8-908f-57e3fbcea7cc.PNG)

![lab8 4 4](https://user-images.githubusercontent.com/43128425/48982566-f77e5580-f0ec-11e8-8ff7-b8f668ab162c.PNG)
For second view
![lab8 4 2](https://user-images.githubusercontent.com/43128425/48982567-f77e5580-f0ec-11e8-9222-3bcfbbbbe02a.PNG)

![lab8 4 3](https://user-images.githubusercontent.com/43128425/48982569-f816ec00-f0ec-11e8-961c-d18bd943087a.PNG)
## Task 5
### Sa se rescrie 2 interogari formulate in exercitiile din capitolul 4, in așa fel. incat interogarile
### imbricate sa fie redate sub forma expresiilor CTE.
![lab8 5 1](https://user-images.githubusercontent.com/43128425/48984138-c0b23a80-f100-11e8-956e-f84845aa8059.PNG)

![lab8 5 2](https://user-images.githubusercontent.com/43128425/48984133-b8f29600-f100-11e8-996c-1a30110e11b0.PNG)

## Task 6
### Se considera un graf orientat, precum eel din figura de mai jos și fie se dore~te parcursa calea
### de la nodul id = 3 la nodul unde id = 0. Sa se faca reprezentarea grafului orientat in forma de
### expresie-tabel recursiv.
### Sa se observe instructiunea de dupa UNION ALL a membrului recursiv, precum și partea de
### pana la UNION ALL reprezentata de membrul-ancora.
![lab8 6](https://user-images.githubusercontent.com/43128425/48984134-b8f29600-f100-11e8-9d5c-ca6a47ff7f15.PNG)

![lab8 6 1](https://user-images.githubusercontent.com/43128425/48984135-b98b2c80-f100-11e8-8373-3bf6636f6d69.PNG)

![lab8 6 2](https://user-images.githubusercontent.com/43128425/48984132-b8f29600-f100-11e8-9e74-8a3162a677f6.PNG)
