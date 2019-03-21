-- Listing 6.32.sql
-- Conversion of ARRAYs into tables with UNNEST()

DO BEGIN
   DECLARE animals VARCHAR(10) ARRAY = ARRAY('Dog', 'Cat', 
         'Mouse');
   DECLARE colors VARCHAR(10) ARRAY = ARRAY('red', 'yellow', 
         'blue', 'orange', 'green', 'purple');

   table = UNNEST(:animals, :colors)
                  WITH ORDINALITY AS (
                        "Animal",
                        "Color",
                        "Nr"
                        );

   SELECT *
   FROM :table;
END;
