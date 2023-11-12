#Proiectul actual presupune elaborarea unei baze de date destinata simularii unui sistem de gestiune al angajatilor de la o firma de tehnologia informatiei. 

#Avem doua tabele: departament si angajat.
#In tabela departament se stocheaza informatiile despre departamente, iar in tabela angajat se stocheaza informatiile despre fiecare angajat. 

#Se defineste cate o cheie primara id, unica, cu auto-incrementare, pentru fiecare tabela in parte.

#Se definesc doua chei straine in tabela angajat:
#1. departament_id - care face referire la id din tabelul departament.
#2. manager_id - o coloana tot din tabela angajat - care e referinta pentru id din tabela angajat.

#Relatia dintre tabele este o relatie de tip ierarhie sau arbore, deoarece angajatii pot avea manageri, si acestia la randul lor pot avea manageri, si asa mai departe. Relatia ierarhica se incadreaza de obicei in categoria "unul la multi" (1:n). 

#Se foloseste instuctiunea CREATE pentru a realiza baza de date si tabelele:
CREATE DATABASE Firma_IT;
USE Firma_IT;

CREATE TABLE departament
(id int PRIMARY KEY AUTO_INCREMENT,
nume char(20),
manager_id int);

CREATE TABLE angajat
(id int PRIMARY KEY AUTO_INCREMENT,
prenume char(20),
nume char(20),
varsta varchar(2),
departament_id int,
manager_id int,
salariu int,
data_angajare date,
INDEX (departament_id),
FOREIGN KEY (departament_id) REFERENCES departament(id),
FOREIGN KEY(manager_id) REFERENCES angajat(id));

#Se foloseste instructiunea INSERT pentru popularea tabelelor.
#Se populeaza mai intai tabela departament (datorita constrangerii de integritate impuse prin referinta: departament_id din tabela angajat este cheie straina pentru id din tabela departament, se impune aceasta ordine de inserarea datelor).
INSERT INTO departament (nume, manager_id) VALUES
('Financiar', 1), ('QA', 2), ('Frontend', 3), ('Backend', 4), ('HR', 5);

INSERT INTO angajat (prenume, nume, varsta, departament_id, manager_id, salariu, data_angajare) VALUES
('Dorian',   'Popa',       45,  1, NULL, 9500, '2009-2-12'),
('Maria',    'Popovici',   30,  1, 1,    5000, '2012-2-6'),
('Vasile',   'Marinescu',  51,  1, 1,    5500, '2011-6-3'),
('Mihai',    'Ionescu',    39,  1, 1,    5500, '2014-5-1'),
('Ana',      'Dumbrava',   35,  2, NULL, 7500, '2010-7-3'),
('Dragos',   'Dinescu',    20,  2, 5,    3000, '2014-1-12'),
('Alin',     'Andrei',     25,  5, NULL, 7500, '2015-3-12'),
('Bogdan',   'Teodorescu', 31,  3, NULL, 7500, '2015-1-12'),
('Vladimir', 'Popescu',    30,  3, 8,    4000, '2017-9-9'),
('Giani',    'Ene',        33,  3, 8,    3500, '2020-2-5'),
('Florin',   'Calinescu',  35,  4, NULL, 7500, '2009-8-2'),
('Mihaela',  'Poppscu',    36,  4, 11,   2800, '2021-4-8'),
('Diana',    'Ionescu',    30,  5, 7,    4500, '2011-1-12'),
('Diana',    'Ionescu',    30,  5, 7,    4500, '2011-1-12'),
('Bianca',   'Giurca',     25,  2, 5,    3500, '2019-3-13'),
('Marius',   'Moise',      35,  2, 5,    3800, '2019-3-13'),
('Cristina', 'Rancov',     31,  2, 5,    3200, '2019-3-13'),
('Iulian',   'Clont',      52,  2, 5,    3400, '2019-3-13'),
('Claudia',  'Florescu',   35,  2, 5,    3300, '2019-3-13'),
('Bogdan',   'Cirlan',     34,  2, 5,    4000, '2019-3-13'),
('Emma',     'Oprisan',    35,  2, 5,    4200, '2019-3-13'),
('Razvan',   'Kovacs',     35,  2, 5,    4100, '2019-3-13');

#Se folosesc instructiunile ALTER si DROP COLUMN pentru a sterge din tabela angajat coloana varsta
ALTER TABLE angajat 
DROP COLUMN varsta;

#Se corecteaza numele scris gresit cu instructiunea UPDATE
UPDATE angajat 
SET nume = 'Popescu' 
WHERE nume = 'Poppscu';

#Angajata Diana Ionescu a fost introdusa de 2 ori. Folosim instructiunea DELETE pentru a sterge angajatul dublat dupa id
DELETE FROM angajat
WHERE id = 14;

#Din intreaga tabela angajat se pune filtru pe angajatii a caror nume incep cu P folosind instructiunea SELECT cu clauzele WHERE si LIKE
SELECT * FROM angajat 
WHERE nume LIKE 'P%';

#Se utilizeaza LIMIT pentru a selecta doar primele 5 randuri din tabela angajat in functie de salariu, pe care l-am ordonat descrescator
SELECT * FROM angajat
ORDER BY salariu DESC
LIMIT 5;

#Se vor selecta angajatii care indeplinesc una dintre cele doua conditii folosind filtrari cu AND si OR:
#a)Angajatii cu salariul mai mare de 4000 si care sunt in departamentul cu departament_id = 1.
#b)Sau angajatii care au un manager (adica manager_id nu este NULL) si au un salariu mai mic de 3500.
#Am selectat numai coloanele de interes (prenume, nume, salariu, departament_id, manager_id).
SELECT prenume, nume, salariu, departament_id, manager_id
FROM angajat
WHERE (salariu > 4000 AND departament_id = 1)
OR (manager_id IS NOT NULL AND salariu < 3500);

#Se vor selecta prenumele si numele angajatilor si se vor ordona descrescator folosind clauza ORDER BY
SELECT prenume, nume
FROM angajat
ORDER BY prenume, nume DESC;

#Se vor selecta prenumele, numele si departament_id si cu ajutorul clauzei JOIN combinam datele din tabelele angajat si departament, se realizeaza un INNER JOIN pe baza conditiei specificata in clauza ON si se aplica o conditie de filtrare cu AND. 
#Rezultatul final este o tabela cu prenumele, numele angajatilor si id-ul departamentului Financiar din care fac parte acestia.
SELECT angajat.prenume, angajat.nume, angajat.departament_id
FROM angajat JOIN departament
ON angajat.departament_id = departament.id
AND departament.nume = 'Financiar';

#Se folosesc functii agregate pentru:
#a)a calcula salariul mediu din departamentul QA
#b)a obtine numarul total de angajati din departamentul QA
SELECT AVG(salariu) AS salariu_mediu
FROM angajat
WHERE departament_id = (SELECT id FROM departament WHERE nume = 'QA');

SELECT COUNT(*) AS numar_angajati
FROM angajat
WHERE departament_id = (SELECT id FROM departament WHERE nume = 'QA');

#Subquery-ul (SELECT MAX(salariu) FROM angajat) este utilizat in instructiunea SELECT pentru a afisa salariul maxim din intreaga tabela angajat alaturi de fiecare angajat.
SELECT concat(prenume, ' ', nume) AS Angajat, salariu,(SELECT MAX(salariu) FROM angajat) AS salariu_maxim
FROM angajat;





