-- Listing 3.30.sql
-- Usate of NOT LIKE
 
--1. Negation of the whole predicate
SELECT count(*)
FROM tasks
WHERE NOT ( title LIKE '%lorem%' );

--2. Equivalent query with NOT LIKE
SELECT count(*)
FROM tasks
WHERE title NOT LIKE '%lorem%';

