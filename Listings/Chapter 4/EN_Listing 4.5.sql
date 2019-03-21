-- Listing 4.5.sql
-- SQL-functions for upper and lower case letters

SELECT abap_upper('Jörg') AS "ABAP_* Function"     ,
       upper('Jörg')      AS "UPPER/LOWER Function",
       ucase('Jörg')      AS "U/L-CASE Function"
FROM DUMMY
UNION
SELECT abap_lower('Jörg') AS "ABAP_* Function"     ,
       lower('Jörg')      AS "UPPER/LOWER Function",
       lcase('Jörg')      AS "U/L-CASE Function"
FROM dummy;
