-- Listing 3.6.sql
-- Example for * in the field list

SELECT t1.* ,
       t2.column1
  FROM table1 AS t1
  JOIN table2 AS t2 
  ON t1.key = t2.key;
