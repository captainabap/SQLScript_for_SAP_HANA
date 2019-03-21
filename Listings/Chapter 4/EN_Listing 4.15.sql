-- Listing 4.15.sql
-- Example for the PAD functions

SELECT 'LPAD(''ABC'',8,''begin'')'  AS "Function",
       LPAD('ABC',8,'begin')       AS "Result"
   FROM dummy
UNION
SELECT 'LPAD(''123'',8,''0'')' AS "Function",
       LPAD('123',8,'0')       AS "Result"
   FROM dummy
UNION
SELECT 'RPAD(''ABC'',8,''end'')' AS "Function",
       RPAD('ABC',8,'end')       AS "Result"
   FROM dummy;
