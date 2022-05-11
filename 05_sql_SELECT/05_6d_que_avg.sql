mysqlmysql-ctl starte/* Aggregationen AVG() */



-- Durchschnittspreis einer Aktie / Banken?

SELECT
round(avg(price),2) Durchschnittspreis
FROM stocks.ccc
WHERE industry = "Banks"
#WHERE industry = "Media"
;
-- KOMBINATION Preis/Dividende pro Industriesektor
SELECT
sector Industriesektor, -- organisch
round(avg(price),2) Durchschnittspreis, -- aggregiert (berechnet)
avg(dividend) Durchschnittsdividende -- aggregiert (berechnet)
FROM stocks.ccc
GROUP BY sector -- Gruppieren nach organ. Daten/Spalte/Feld
#ORDER BY Durchschnittspreis DESC
ORDER BY Durchschnittsdividende DESC
;