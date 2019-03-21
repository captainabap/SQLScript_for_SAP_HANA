-- Listing 3.29.sql
-- Example of the usage of comparison predicates
 
--1. All tasks with a status lower/equal 3
SELECT *
FROM tasks
WHERE status <= 3;

--2. All tasks in the status 1, 2 or 4
SELECT *
FROM tasks
WHERE status = ANY ( 1, 2, 4 );

--3. All tasks in a final status
SELECT *
FROM tasks
WHERE status = ANY ( SELECT id
                     FROM status
                     WHERE is_final = true  );

--4. All tasks that are not in a final status
SELECT *
FROM tasks
WHERE status <> ALL ( SELECT id
                      FROM status
                      WHERE is_final = true );
