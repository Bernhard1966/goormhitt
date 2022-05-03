* ------- Strukturen -----*/
/* Kommentar 1 */
# Kommentar 2
-- Kommentar 3



/* Datenbank auf Server anzeigen */
#SHOW DATABASES;

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

#SHOW DATABASES;

/* DB auswählen */
USE boo;



CREATE TABLE IF NOT EXISTS test
(
name VARCHAR(20) NOT null DEFAULT  "TBA",
age INT NOT null DEFAULT 0 

);

#SHOW TABLES;
DESCRIBE test;
INSERT INTO test(name,age) VALUES ( " Grizabella " , 29 );
INSERT INTO test(age,name) VALUES ( 35 , " Alonzo " );
INSERT INTO test(name,age) VALUES ( " otto " , 21 );
INSERT INTO test(name,age) VALUES ( " Karla " , 9 );

/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;



/* Struktur der Tabelle anzeigen */
DESCRIBE test;
SELECT * FROM test;