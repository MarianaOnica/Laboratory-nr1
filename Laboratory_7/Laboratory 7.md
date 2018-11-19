# Laboratory-nr7

Topic: Diagrame,scheme și sinonime

## Task 1
### Creati o diagrama a bazei de date, folosind fonna de vizualizare standard, structura careia este
### descrisa la inceputul sarcinilor practice din capitolul 4.
![lab7 1](https://user-images.githubusercontent.com/43128425/48711656-77e81680-ec14-11e8-9e1d-fdbb8838753c.PNG)
## Task 2
### Sa se adauge constrangeri referentiale (legate cu tabelele studenti și profesori) necesare
### coloanelor Sef_grupa și Prof_Indrumator (sarcina3, capitolul 6) din tabelul grupe.
![lab7 2](https://user-images.githubusercontent.com/43128425/48713107-30638980-ec18-11e8-812b-cea4abc40723.PNG)
## Task 3
### La diagrama construitii, sa se adauge și tabelul orarul definit in capitolul 6 al acestei lucrari:
### tabelul orarul contine identificatorul disciplinei (ld_Disciplina), identificatorul profesorului
### (Id_Profesor) și blocul de studii (Bloc). Cheia tabelului este constituita din trei cfunpuri:
### identificatorul grupei (Id_ Grupa), ziua lectiei (Z1), ora de inceput a lectiei (Ora) , sala unde
### are loc lectia (Auditoriu).
![lab7 3](https://user-images.githubusercontent.com/43128425/48713833-f98e7300-ec19-11e8-929e-7ac896a639f9.PNG)
## Task 4
### Tabelul orarul trebuie sa contina ~i 2 chei secundare: (Zi, Ora, Id_ Grupa, Id_ Profesor) ~i
### (Zi, Ora, ld_Grupa, ld_Disciplina).
![lab7 4 1](https://user-images.githubusercontent.com/43128425/48714445-6a825a80-ec1b-11e8-8702-5ed77f90a690.PNG)
![lab7 4 2](https://user-images.githubusercontent.com/43128425/48714450-6d7d4b00-ec1b-11e8-8a62-1d0f0d2619e8.PNG)
## Task 5
### În diagrama, de asemenea, trebuie sa se defineasca constrangerile referentiale (FK-PK) ale
### atributelor ld_Disciplina, ld_Profesor, Id_ Grupa din tabelului orarul cu atributele tabelelor respective.
![lab7 5](https://user-images.githubusercontent.com/43128425/48715225-314aea00-ec1d-11e8-8e45-9fb8fe862ec5.PNG)
## Task 6
### Creati, in baza de date universitatea, trei scheme noi: cadre_didactice, plan_studii ~i studenti.
### Transferati tabelul profesori din schema dbo in schema cadre didactice, tinand cont de
### dependentelor definite asupra tabelului mentionat. in acela~i mod ~ se trateze tabelele orarul,
### discipline care apartin schemei plan_studii ~i tabelele studenti, studenti_reusita, care apartin
### schemei studenti. Se scrie instructiunile SQL respective.
![lab7 6 3](https://user-images.githubusercontent.com/43128425/48717161-82f57380-ec21-11e8-9644-1bc234bf831a.PNG)
![lab7 6 1](https://user-images.githubusercontent.com/43128425/48717162-82f57380-ec21-11e8-9dd6-6c0367356e6c.PNG)
![lab7 6 2](https://user-images.githubusercontent.com/43128425/48717163-82f57380-ec21-11e8-8f2f-3eba13f42db7.PNG)
## Task 7
### Modificati 2-3 interogari asupra bazei de date universitatea prezentate in capitolul 4 astfel ca
### numele tabelelor accesate sa fie descrise in mod explicit, tinand cont de faptul ca tabelele au
### fost mutate in scheme noi.
