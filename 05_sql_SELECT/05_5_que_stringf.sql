-- CONCAT() / Verknuepfung "string" + "string" ....
/*
SELECT
ticker AS "SYM",
c_name "Unternehmen",
concat("Ops: ",sector," : ",industry) "Operation"
FROM stocks.ccc
#ggf. Restriktionen
LIMIT 10;

*/


-- UPPER() --> alles in Großbuchstaben
/*
SELECT
ticker AS "SYM",
upper(c_name) "Unternehmen"
FROM stocks.ccc
#ggf. Restriktionen
LIMIT 10;
*7



-- LOWER() --> alles in Kleinbuchstaben (zb. bei mail-Adressen)
/*
SELECT
ticker AS "SYM",
lower(c_name) "Unternehmen"
FROM stocks.ccc
#ggf. Restriktionen
LIMIT 10;
*/




-- LENGTH() / char_length()--> String-Laenge
/*
SELECT
ticker SYM,
c_name Unternehmen,
concat("Ops: ",sector," : ",industry) Operation,
length(concat("Ops: ",sector,":",industry)) StrLen -- in Byte
#char_length(concat("Ops: ",sector,":",industry)) StrLen -- in Chars
FROM stocks.ccc
ORDER BY StrLen DESC
LIMIT 20;
*/




-- REPLACE() --> Ersetzen von Stringanteilen

SELECT
ticker AS "SYM",
c_name "Unternehmen",
replace(c_name,"Inc.","Incorporated") AS "Incorporated"
#replace(c_name,"Corp.","Corporation") AS "Corporation"
FROM stocks.ccc
WHERE c_name LIKE "%Inc."
#WHERE c_name LIKE "%Corp."
LIMIT 20;

