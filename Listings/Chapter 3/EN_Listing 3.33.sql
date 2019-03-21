-- Listing 3.33.sql
-- Example for the usage of the IN-predicate

--1. Check of one column with multiple values with OR
SELECT *
FROM users
WHERE firstname = 'Ozzy'
   OR firstname = 'Alfredo'
   OR firstname = 'Troy';

--2. Analog query with the IN predicate
SELECT *
FROM users 
WHERE firstname IN ( 'Ozzy', 'Alfredo', 'Troy' );


--3. Use of a subquery with the IN predicate: 
--Users who currently have no task assigned to them.
SELECT *
FROM users
WHERE id NOT IN ( SELECT DISTINCT assignee
                  FROM tasks );
