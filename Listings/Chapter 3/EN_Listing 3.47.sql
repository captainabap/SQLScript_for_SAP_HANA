-- Listing 3.47.sql
-- Subtraction of sets with EXCEPT and NOT EXISTS

--Query of all assignees of tasks, without project managers
--First with EXCEPT:
SELECT assignee
FROM tasks
EXCEPT
SELECT project_manager
FROM projects;

--And the same query with NOT EXISTS
SELECT DISTINCT assignee
FROM tasks AS a
WHERE NOT EXISTS (
      SELECT id
      FROM projects AS p
      WHERE p.project_manager = a.assignee );
