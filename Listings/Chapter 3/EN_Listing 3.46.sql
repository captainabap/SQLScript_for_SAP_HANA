-- Listing 3.46.sql
-- Example for the usage of INTERSECT 
 
--All users, that are project managers and with an 
--assigned task.
--First aproach with INTERSECT:
SELECT assignee
FROM tasks
INTERSECT
SELECT project_manager
FROM projects;

--And secondly with an INNER JOIN:
SELECT DISTINCT assignee
FROM tasks
INNER JOIN projects
   ON assignee = project_manager;
