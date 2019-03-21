-- Listing 2.7.sql
-- Expressions in the field list
SELECT 
--     Columname as an expression
       id,
--     Concatination as an expression
       firstname || ' ' || lastname AS name,
--     CASE-Expression..
       CASE
--                        ..with a UDF expression
          WHEN sex = 'F' THEN NCHAR('9792')
          WHEN sex = 'M' THEN NCHAR('9794')
          ELSE '' 
       END AS MW,
--     SQL-function expression
       COALESCE(team, 0) as team
   FROM users;
