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



1.	Create data base
 ![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/6caa85a0-45e2-4486-a9e6-48727d6a7873)


2.	Create table dep
![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/14336eef-881c-4321-89df-6471c474eedf)


3.	Create angajat


4.	Se poP tabelele


5.	Select from angajat and dep
 
 
6.	Drop varsta
 

7.	Update nume
 

8.	Delete id 14 duplicate


9.	Filtru nume cu P
 

10.	Primele 5 sal
 

11.	AND/OR
 

12.	Order by



13.	Inner join
 

14.	Functii aggregate avg si count
 
 

15.	Subquery
 


 




