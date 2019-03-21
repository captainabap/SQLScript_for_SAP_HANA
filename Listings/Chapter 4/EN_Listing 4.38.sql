-- Listing 4.38.sql
-- Conversion from ASCII decimal to VARBINARY

CREATE COLUMN TABLE test_varbin(
                            ascii_int  INT,
                            ascii_char VARCHAR(1),
                            ascii_hex  VARBINARY(1)) ;

DO BEGIN
   DECLARE i INT;
   FOR i IN 33..127 DO
   INSERT INTO test_varbin VALUES(:i,
                                  CHAR(:i),
                                  bintonhex(CHAR(:i))) ;
   END FOR;
END;

SELECT ascii_int  as "Int",
       ascii_char as "Char",
       ascii_hex  as "Hex" FROM test_varbin;
DROP TABLE test_varbin;
