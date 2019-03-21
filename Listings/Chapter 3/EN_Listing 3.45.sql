-- Listing 3.45.sql
-- Usage of UNION and UNION ALL
 
--Query with UNION: Duplicates are removed
SELECT 'A' AS column1,
       'B' AS column2
FROM DUMMY
UNION
SELECT 'A' AS column1,
       'B' AS column2
FROM DUMMY;

--Second query with UNION ALL without removing duplicates
SELECT 'A' AS column1,
       'B' AS column2
FROM DUMMY
UNION ALL
SELECT 'A' AS column1,
   'B' AS column2
FROM DUMMY;
