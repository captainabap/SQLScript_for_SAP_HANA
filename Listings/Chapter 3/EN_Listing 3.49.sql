-- Listing 3.49.sql
-- Usage of table- and column alias

SELECT tasks.id AS task_id,
   tasks.title AS task_title,
   assignee.id AS assignee_id, 
   assignee.firstname 
   || ' ' 
   || assignee.lastname AS assignee_name,
   project_manager.id AS project_manager_id,
   project_manager.firstname 
   || ' ' 
   || project_manager.lastname AS project_manager_name
FROM tasks
INNER JOIN projects
   ON tasks.project = projects.id
INNER JOIN users AS project_manager
   ON projects.project_manager = project_manager.id
INNER JOIN users AS assignee
   ON tasks.assignee = assignee.id;
