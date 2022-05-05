/* Datenimport - csv mit ID */



/* Tabelle cats*/
DROP TABLE IF EXISTS boo.cats;

CREATE TABLE IF NOT EXISTS boo.cats
(
id INT NOT NULL PRIMARY KEY,
cat_name VARCHAR(20) NOT NULL,
fur_color VARCHAR(20) NOT NULL,
age INT NOT NULL
);
DESCRIBE boo.cats;
LOAD DATA LOCAL INFILE "04_SQL_Datenimport/data/cats_export.csv"
INTO TABLE boo.cats
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
;

SELECT * FROM boo.cats;

