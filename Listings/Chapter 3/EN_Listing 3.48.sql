-- Listing 3.48.sql
-- Example for subqueries 
 
--1. Scalar subquery
SELECT *
FROM tasks
WHERE status = (
      SELECT max(id)
      FROM status );

--2. Column-subquery
SELECT *
FROM tasks
WHERE status IN (
      SELECT id
      FROM status
      WHERE is_final = true );

--3. Table-subquery
SELECT b.firstname || ' ' || b.lastname AS PL,
   p.title
FROM (
   SELECT *
   FROM projects
   WHERE title LIKE 'F%' ) AS p
INNER JOIN users AS b
   ON p.project_manager = b.id;
