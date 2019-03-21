-- Listing 4.7.sql
-- String decomposition with SUBSTR_BEFORE and SUBSTR_AFTER

SELECT 
   substr_before('String decomposition','de') AS before_de ,
   substr_after('String decomposition','de')  AS after_de,
   substr_after('String decomposition','')    AS everything ,
   substr_after('String decomposition','ABC') AS nothing
   FROM
      DUMMY;      
