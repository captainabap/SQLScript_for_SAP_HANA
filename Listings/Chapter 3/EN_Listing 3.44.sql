-- Listing 3.44.sql
-- Sorting with ORDER BY  
 
--1. Sorting by column name
SELECT *
FROM tasks
ORDER BY planed_effort,
         effort;

--2. Sorting by column number
SELECT *
FROM tasks
ORDER BY 7,
         8;

--3. Sorting by an expression 
SELECT id,
   title
FROM tasks
ORDER BY planed_effort - effort DESC;
