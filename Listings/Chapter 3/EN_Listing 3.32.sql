-- Listing 3.32.sql
-- Comparison with BETWEEN
  
--1. Comparison with BETWEEN
SELECT *
FROM users
WHERE id BETWEEN 5 AND 10;

--2. The same query with comparison predicates
SELECT *
FROM users
WHERE id >= 5
   AND id <= 10;
