-- Listing 3.25.sql
-- Cross Join over colors and sizes 
 
--Cross product with CROSS JOIN
SELECT *
FROM colors
CROSS JOIN sizes;

--Cross product with just a comma in the FROM-clause
SELECT *
FROM colors,
   sizes;
