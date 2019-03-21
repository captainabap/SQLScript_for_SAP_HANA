-- Listing 3.23.sql
-- Example with the window function lead
 
SELECT id,
   project,
   LEAD(id) OVER ( PARTITION BY project 
                   ORDER BY id ) AS next_task
FROM tasks
ORDER BY id;
