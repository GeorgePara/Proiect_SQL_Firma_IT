# Testare-Manuala-Proiect-Final-SQL

## Descriere

Proiectul actual presupune elaborarea unei [baze de date](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/blob/main/Testare-Manuala-Proiect-Final-SQL.sql) destinată simulării unui sistem de gestionare a angajaților de la o firmă de tehnologia informației. Baza de date include două tabele principale: `departament` și `angajat`, care sunt legate printr-o relație ierarhică (1:n).

## Structura Bazei de Date

### Tabela `departament`
- `id`: Identificator unic pentru fiecare departament (cheie primară).
- `nume`: Numele departamentului.
- `manager_id`: ID-ul managerului departamentului (cheie externă).

### Tabela `angajat`
- `id`: Identificator unic pentru fiecare angajat (cheie primară).
- `prenume`: Prenumele angajatului.
- `nume`: Numele angajatului.
- `varsta`: Varsta angajatului.
- `departament_id`: ID-ul departamentului în care lucrează angajatul (cheie externă).
- `manager_id`: ID-ul managerului angajatului (cheie externă).
- `salariu`: Salariul angajatului.
- `data_angajare`: Data la care angajatul a fost angajat.

## Dezvoltat cu MySQL Workbench

Acest proiect a fost dezvoltat folosind MySQL Workbench, un instrument puternic de administrare și dezvoltare a bazelor de date MySQL.

## Cum se utilizeaza

Se foloseste instuctiunea `CREATE` pentru a realiza baza de date si tabelele: `departament` si `angajat`

Se defineste cate o cheie primara id, unica, cu auto-incrementare, pentru fiecare tabela in parte.

Se definesc doua chei straine in tabela angajat:

a. `departament_id` - care face referire la id din tabelul departament.

b. `manager_id` - o coloana tot din tabela angajat - care e referinta pentru id din tabela angajat.

1.	Creare [baze de date](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/blob/main/Testare-Manuala-Proiect-Final-SQL.sql)

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/7f720023-bcfe-4a32-81a0-61d2cddf106a)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

2.	Creare Tabela `departament`

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/cae95519-3b11-4680-a06a-dacca003cb80)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3.	Creare Tabela `angajat`

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/383fd439-0ffb-462a-88ce-99824c5bbacc)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

4.	Populare Tabela `departament` si Tabela `angajat` cu instructiunea `INSERT`.

  	Se populeaza mai intai tabela departament (datorita constrangerii de integritate impuse prin referinta: departament_id din tabela angajat este cheie straina pentru id din tabela departament, se impune aceasta 
ordine de inserarea datelor).

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/98283855-6e13-4263-b404-6bda1f2e6d0e)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

5.	Afisarea datelor din tabela `angajat` si tabela `departament` cu instructiunea `SELECT * `

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/fb7d4cd0-e799-48bb-982d-1d5a2ede0c68)

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/1f0f8e34-348c-44d1-917e-cad745e30809)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

6.	Stergerea coloanei `varsta` din tabela `angajat` folosind instructiunile `ALTER` si `DROP COLUMN`

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/997bb215-9b32-491f-8c10-3a091d8c7d24) 

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

8.	Actualizarea tabelei `angajat` prin modificarea numelui scris gresit cu ajutorul instructiunii `UPDATE` si clauzelor `SET` si `WHERE`

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/e14fa58e-c56f-45b6-a3fb-c21cb4c65495)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

9.	Stergerea id-ului angajatului duplicat cu instructiunea `DELETE` si clauza `WHERE` aplicata pe `id`

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/d46a11f6-a160-4481-8500-10d4dd45cf14)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

10.	Filtrarea dupa `nume` avand conditia sa inceapa cu litera "P" in tabela `angajat` si afisarea acestora.

   	S-a folosit instructiunea `SELECT *` impreuna cu clauzele `WHERE` si `LIKE`

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/13a166c6-d3a4-471d-8610-613946cc7987)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

12.	Utilizarea instructiunii `SELECT *` in tabela `angajat` impreuna cu clauzele `ORDER BY` si `LIMIT` pentru a afisa doar primele 5 randuri de angajati, ordonati descrescator prin `DESC`, in functie de `salariu`.

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/b36be892-7c44-45f9-948b-4c769c0f749d)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

14.	Selectarea coloanelor `prenume`, `nume`, `salariu`, `departament_id`, `manager_id` din tabela `angajat` cu instructiunea `SELECT` pentru a afisa angajatii care indeplinesc una din cele doua conditii folosind
filtrari cu `AND` si `OR`:

    a. angajatii cu salariul mai mare de 4000 si care sunt in departamentul cu `departament_id` = 1.
   	
    b. sau angajatii care au un manager (adica `manager_id` nu este `NULL`) si au un `salariu` mai mic de 3500. 
 
![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/0b9680c0-787e-4007-bf83-b5eb7e6e7894)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

14.	Afisarea coloanelor `prenume`, `nume` din tabela `angajat` cu instructiunea `SELECT` si ordonarea descrescatoarea a angajatilor folosind `ORDER BY` si `DESC` 

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/cfea8664-61d1-4767-a11b-e190a5b5bf9f)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

15.	Afisarea coloanelor `prenume`, `nume` si `departament_id` din tabela `angajat` cu instructiunea `SELECT`, combinarea datelor din tabelele `departament` si `angajat` cu ajutorul clauzei `JOIN`.

    Se realizeaza un `INNER JOIN` pe baza conditiei specificata in clauza `ON` si se aplica o conditie de filtrare cu `AND`.
   	
   	Rezultatul final este o tabela cu prenumele, numele angajatilor si id-ul departamentului `Financiar` din care fac parte acestia.
 
![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/0b4771f0-7346-4649-ae3d-b95b480b8076)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

16.	Folosirea functiilor agregate pentru:
    
    a. a calcula salariul mediu din departamentul `QA` (am folosit instructiunea `SELECT` impreuna cu functia agregata `AVG` aplicata pe coloana `salariu`)
   	
   	b. a obtine numarul total de angajati din departamentul `QA` (am folosit instructiunea `SELECT` impreuna cu functia agregata `COUNT` aplicata pe totalul de angajati `*`)


![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/f3d8c4df-8f77-4714-a49e-d1e420946cf4)

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/1cd73d60-f987-48cc-9970-81059e23e0e3)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

17.	Utilizarea Subquery-ului `(SELECT MAX(salariu) FROM angajat)` pentru a afisa `salariu_maxim` din intreaba tabela `angajat` alaturi de fiecare angajat.

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/65b8619c-082e-40c3-9529-a00faaa1cc83)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

18. relatie

![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/2f1394f0-e872-4f41-a903-95159e9d9dca)


 



