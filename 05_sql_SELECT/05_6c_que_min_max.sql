SELECT 
    
 #   MAX(price) AS "max. Price",
  #   MIN(price) AS "min. Price"
    # SELECT MAX(price) FROM stocks.ccc;
   # SELECT MIN(price) FROM stocks.ccc;
   ticker AS SYn,
   c_name Unternehmen,
   price AS "Kurs in $"
FROM stocks.ccc
#WHERE price =(SELECT MIN(price) FROM stocks.ccc)
WHERE price =(SELECT MAX(price) FROM stocks.ccc)
;