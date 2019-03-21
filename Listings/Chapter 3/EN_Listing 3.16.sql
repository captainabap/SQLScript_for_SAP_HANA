-- Listing 3.16.sql
-- Aggregation with grouping on two columns

SELECT project,
   assignee,
   sum(effort)
FROM tasks
GROUP BY project,
   assignee
ORDER BY project,
   assignee;
