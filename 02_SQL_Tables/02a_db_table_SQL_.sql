* ------- Strukturen -----*/
/* Kommentar 1 */
# Kommentar 2
-- Kommentar 3



/* Datenbank auf Server anzeigen */
SHOW DATABASES;



/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;



/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;



SHOW DATABASES;



/* DB auswählen */
USE boo;



CREATE TABLE test
(
name VARCHAR(20),
age INT

);



/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;



/* Struktur der Tabelle anzeigen */
DESCRIBE test;