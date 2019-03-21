-- Listing 3.15.sql
-- Calculation of the effort for all projects

SELECT project,
       sum(effort)
FROM tasks
GROUP BY project;
