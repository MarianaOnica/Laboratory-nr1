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

## Task 4
### Sa se scrie instructiunile de testare a proprietatilor noi definite.

## Task 5
### Sa se rescrie 2 interogari formulate in exercitiile din capitolul 4, in așa fel. incat interogarile
### imbricate sa fie redate sub forma expresiilor CTE.

## Task 6
### Se considera un graf orientat, precum eel din figura de mai jos și fie se dore~te parcursa calea
### de la nodul id = 3 la nodul unde id = 0. Sa se faca reprezentarea grafului orientat in forma de
### expresie-tabel recursiv.
### Sa se observe instructiunea de dupa UNION ALL a membrului recursiv, precum și partea de
### pana la UNION ALL reprezentata de membrul-ancora.
