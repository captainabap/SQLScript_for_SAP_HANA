-- Listing 3.43.sql
-- Aggregation with GROUP BY- and HAVING-clause

SELECT assignee, 
       avg(planed_effort)
FROM tasks
GROUP BY assignee
HAVING count(*) > 5;
