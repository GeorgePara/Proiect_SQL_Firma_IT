# Testare-Manuala-Proiect-Final-SQL

## Descriere

Acest proiect reprezintă o bază de date relațională pentru gestionarea resurselor umane în cadrul unei firme IT. Baza de date include două tabele principale: `departament` și `angajat`, care sunt legate printr-o relație ierarhică.

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


