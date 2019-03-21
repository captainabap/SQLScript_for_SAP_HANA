-- Listing 3.22.sql
-- ORDER BY-clause in window functions

SELECT id,
   status,
   COUNT(*) OVER (PARTITION BY status ORDER BY id) AS counter
FROM tasks
ORDER BY status;
