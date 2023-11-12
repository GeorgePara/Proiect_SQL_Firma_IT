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
   
![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/7f720023-bcfe-4a32-81a0-61d2cddf106a)

3.	Create table dep
   
![image](https://github.com/GeorgePara/Testare-Manuala-Proiect-Final-SQL/assets/135150121/cae95519-3b11-4680-a06a-dacca003cb80)



5.	Create angajat


6.	Se poP tabelele


7.	Select from angajat and dep
 
 
8.	Drop varsta
 

9.	Update nume
 

10.	Delete id 14 duplicate


11.	Filtru nume cu P
 

12.	Primele 5 sal
 

13.	AND/OR
 

14.	Order by



15.	Inner join
 

16.	Functii aggregate avg si count
 
 

17.	Subquery
 


 




