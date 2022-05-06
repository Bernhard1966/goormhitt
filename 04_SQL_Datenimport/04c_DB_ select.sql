#
SELECT * FROM boo.cats;

UPDATE boo.cats SET cat_name = "Alonzo" WHERE id = 2;
UPDATE boo.cats SET fur_color  = "blue" WHERE id = 3;
SELECT  cat_name FROM boo.cats;
SELECT cat_name AS "katzen" FROM boo.cats
#WHERE id = 1
#WHERE fur_color = "grey"
WHERE age >= 49;
;
