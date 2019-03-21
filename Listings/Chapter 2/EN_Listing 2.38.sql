-- Listing 2.38.sql  
-- Price determination based on price class and online flag

CREATE FUNCTION udf_price( iv_price_class VARCHAR(3),
                           iv_is_online VARCHAR(1)   )
RETURNS rv_price DEC(17, 2)
AS BEGIN
   SELECT CASE :iv_is_online
         WHEN 'X' THEN CASE :iv_price_class
                  WHEN 'PN1' THEN 3.89
                  WHEN 'PN2' THEN 4.39
                  WHEN 'PT1' THEN 4.99
                  WHEN 'PT2' THEN 5.99
                  WHEN 'PT3' THEN 8.49
                  WHEN 'PT4' THEN 16.49
                  ELSE 0
                  END
         ELSE --store
            CASE :iv_price_class
               WHEN 'PN1' THEN 4
               WHEN 'PN2' THEN 4.5
               WHEN 'PT1' THEN 6.99
               WHEN 'PT2' THEN 6.99
               WHEN 'PT3' THEN 9.49
               WHEN 'PT4' THEN 16.49
               ELSE 0
               END
         END
   INTO rv_price
   FROM DUMMY;
END;
