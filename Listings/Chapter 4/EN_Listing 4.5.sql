-- Listing 4.5.sql
-- SQL-functions for upper and lower case letters

SELECT abap_upper('J�rg') AS "ABAP_* Function"     ,
       upper('J�rg')      AS "UPPER/LOWER Function",
       ucase('J�rg')      AS "U/L-CASE Function"
FROM DUMMY
UNION
SELECT abap_lower('J�rg') AS "ABAP_* Function"     ,
       lower('J�rg')      AS "UPPER/LOWER Function",
       lcase('J�rg')      AS "U/L-CASE Function"
FROM dummy;
