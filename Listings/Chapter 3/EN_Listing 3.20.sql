-- Listing 3.20.sql
-- Comparison between COUNT as an aggregate expression and as a window function
 
--Aggregate expression COUNT
SELECT status,
   COUNT(*) AS counter
FROM tasks
GROUP BY status
ORDER BY status;

--Window Function COUNT
SELECT id,
   status,
   COUNT(*) OVER (PARTITION BY status) AS counter
FROM tasks
ORDER BY id;
