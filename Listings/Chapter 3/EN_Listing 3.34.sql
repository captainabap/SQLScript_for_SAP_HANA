-- Listing 3.34.sql
-- Examples for the EXIST-predicate
  
--1. query with EXISTS predicate
--All users with at least one task
SELECT *
FROM users
WHERE EXISTS (
      SELECT assignee
      FROM tasks
      WHERE tasks.assignee = users.id );

--2. query with NOT EXISTS
--Tasks whose status is not in the status table
SELECT *
FROM tasks
WHERE NOT EXISTS (
      SELECT id
      FROM status
      WHERE status.id = tasks.status );

--3. Same query with NOT IN
SELECT *
FROM tasks
WHERE status NOT IN (
      SELECT id
      FROM status );
