# Laboratory-nr2
Topic:Creating and mofifying tables in SQL server management studio
### Tasks1:
Which of the below numbers can be introduced in a field of DECIMAL(4,1) type?
a)16.2  b)116.2  c)16.21  d)1116.2  e)1116.21
### Answer:
 DECIMAL(P[,S]) data type is used to preserve exact decimal numbers. Parameter P represents the total number of digits that
      the field may contain. S represent the number of digits after decimal point. 
      116.2.
### Tasks2:
[Col1] from the table is of type INT and [Col2] if of type DECIMAL(2,1)

![tabel](https://user-images.githubusercontent.com/43128425/45871494-51356d00-bd96-11e8-9cba-c147b826d070.jpg)
             
   What data type should be [Col3] if we want to process [Col1]* [Col2] ?
### Answer:
In case we want to process [Col1]*[Col2], taking into account only this 4 numbers, than [Col3] should 
      be of type DECIMAL(2,1). If we're taking into account  the maximal values that INT and DECIMAL(2,1) can
      have, then [Col3]should be of type DECIMAL(12,1), because max of INT is 2.147.483.647 and max of
      DECIMAL(2,1)is 9.9.So, the result is 2 126 008 810 5.3.
      
### Tasks3:
Create a database called the university with default properties. within this haze of
data, create 2 tables (groups, disciplines) whose schemes are defined in section 3 .3 a
Chapter.
### Answer:

![bazadedate](https://user-images.githubusercontent.com/43128425/45871872-2bf52e80-bd97-11e8-95a2-8f5dfd32d875.jpg)

![diagram](https://user-images.githubusercontent.com/43128425/45870449-92784d80-bd93-11e8-8f76-37e6c378d565.jpg)"

### Tasks4:
Include in the respective tables the necesary entries.

![disciplinedate](https://user-images.githubusercontent.com/43128425/45872377-8ba00980-bd98-11e8-8701-6ca003349a0f.jpg)

