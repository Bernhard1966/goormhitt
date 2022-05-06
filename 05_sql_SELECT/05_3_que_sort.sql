/* QUERIES Sortierung */

-- ASC / DESC
SELECT
   ticker AS "SYM",
   price AS "Kurs in $",
   c_name AS Unternehmen,
   no_yrs AS "Jahre ++",
   concat( sector, " | ", industry) AS "Operations"
FROM stocks.ccc
-- Sortierung
#ORDER BY ticker ASC -- SYM, alphabetisch, aufsteigend
#ORDER BY ticker DESC -- SYM, alphabetisch, absteigend

#ORDER BY price ASC -- Kurs, numerisch, beginnend mit der günstigsten Aktie
#ORDER BY price DESC -- Kurs, numerisch, beginnend mit der teuerste Aktie
#ORDER BY no_yrs DESC -- numerisch, Aktien mit der längsten Div.-Historie

#ORDER BY sector DESC,industry ASC  -- Kombination ASC / DESC alphabet.
ORDER BY no_yrs DESC, sector ASC  -- Kombination ASC / DESC  alphabet. / numerisch

-- Begrenzung 
LIMIT 40 
;