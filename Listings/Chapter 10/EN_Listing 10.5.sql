-- Listing 10.5.sql
-- Example for splitting a query into several steps

-- Original SELECT statement
SELECT project,
       projects.title,
       SUM(tasks.planned_effort) AS planned_effort,
       SUM(tasks.effort) AS effort,
       ROUND(SUM(tasks.effort)
            /SUM(tasks.planned_effort)*100,0)
          || '%' AS perc,
       projects.estimated_effort
FROM   tasks
       LEFT OUTER JOIN projects 
       ON projects.id=tasks.project 
WHERE  tasks.status IN (SELECT id 
                           FROM status 
                           WHERE is_final = true)
GROUP  BY project,
       projects.title,
       projects.estimated_effort
ORDER  BY ROUND(SUM(tasks.effort)
               /SUM(tasks.planned_effort)*100,0);
               
-- Divided into steps:
DO BEGIN
-- Inbound projection STATUS
   lt_status_in = 
      SELECT id 
         FROM status 
         WHERE is_final = true;
         
-- Inbound projection TASKS
   lt_tasks_in = 
       SELECT project,
              planned_effort,
              effort
       FROM   tasks
       WHERE  status in (SELECT * FROM :lt_status_in);

-- Aggregation of the TASKS on PROJECTS
   lt_tasks_aggr = 
       SELECT project,
              SUM(planned_effort) AS planned_effort,
              SUM(effort)  AS effort
       FROM   :lt_tasks_in
       GROUP  BY project;
       
-- Calculation on TASKS       
   lt_tasks_calc = 
       SELECT *,
              ROUND(effort/planned_effort*100) as perc
       FROM   :lt_tasks_aggr;

-- Inbound projection PROJECTS       
   lt_projects_in = 
       SELECT id,
              title,
              estimated_effort
       FROM   projects; 

-- JOIN-step       
   lt_projects_tasks = 
      SELECT tasks.*,
             projects.*
      FROM   :lt_tasks_calc AS tasks
             LEFT OUTER JOIN :lt_projects_in as projects 
             ON tasks.project = projects.id
      ORDER  BY tasks.perc;

-- Outbound projection
   SELECT project,
          title,
          planned_effort,
          effort,
          perc || '%' as perc,
          estimated_effort
   FROM :lt_projects_tasks;
END;
