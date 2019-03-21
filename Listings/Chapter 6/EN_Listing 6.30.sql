-- Listing 6.30.sql
-- Example of accessing an array in a database table

CREATE COLUMN TABLE array_demo(
    keycol INT ,
    namen NVARCHAR(30) ARRAY 
);
INSERT INTO array_demo VALUES( 1, 
                               ARRAY ('Jörg', 
                                      'Roland', 
                                      'Brandeis')
                               );
INSERT INTO array_demo VALUES( 2, 
                               ARRAY ('Peter', 
                                      'Maier')
                               );
INSERT INTO array_demo VALUES( 3, 
                               ARRAY ('Superman')
                               );
SELECT keycol,
       namen[1],                  --Erstes Element
       namen[cardinality(namen)]  --Letztes Element
       FROM array_demo;
DROP TABLE array_demo;
