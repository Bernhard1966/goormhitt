-- Zeige die Aktie mit der max. Rendite im jeweiligen Industriesektor
-- Rendite p.a. in % = 
-- Dividendenanteil pro Aktie * Anzahl der Auszahlungen/Jahr / Aktienpreis (Kurs) * 100
-- Variante mit VIEWs


USE stocks;

-- Löschen falls vorhanden
DROP VIEW IF EXISTS renditen;
DROP VIEW IF EXISTS renditen_max;
DROP VIEW IF EXISTS top_werte_im_sektor;

-- Berechnung der jährl. Rendite aller Aktienwerte
CREATE VIEW renditen AS
SELECT
    c_name,
    round(dividend * payouts * 100 / price, 2) AS rendite
FROM stocks.ccc
;

#SELECT * FROM renditen LIMIT 20; -- Referenzierung auf VIEW wie Tab.
#SELECT * FROM stocks.renditen LIMIT 20; 

-- Berechnung der max. Rendite je Sektor
CREATE VIEW renditen_max AS
SELECT
    sector,
    ROUND(max(yield),2) AS rendite
FROM stocks.ccc
GROUP BY sector
;

#SELECT * FROM renditen_max;

-- Ergebnis-View: top_werte_im_sektor
CREATE VIEW top_werte_im_sektor AS
SELECT
    -- Spalten aus Tab. t1 --> stocks.ccc
   t1.sector AS "Industriesektor",
   t1.ticker AS "SYM",
   t1.c_name AS "Firma",
   t1.price AS "Aktienkurs",
   t1.dividend AS "Dividende",
   -- Spalte aus Tab. t2 --> VIEW: renditen 
   t2.rendite AS "Rendite p.a."
FROM stocks.ccc AS t1
-- Verknüpfen mit berechneten Renditen aus VIEW:renditen
INNER JOIN renditen AS t2 
ON t1.c_name = t2.c_name
-- Verknüpfen mit max. Renditen je Sektor aus VIEW:renditen_max
INNER JOIN renditen_max AS t3 
ON t1.sector = t3.sector -- wenn gleicher Wert im Feld Sektor 
AND t2.rendite = t3.rendite -- wenn Rendite = Max. Rendite im Sektor 
ORDER BY t2.rendite DESC
;

SELECT * FROM top_werte_im_sektor;
