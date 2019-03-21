-- Listing 3.38.sql
-- SELECT-query with a WITH-clause

--First a named query is created
WITH lt_tasks_to_check AS (
   SELECT a.id,
      b.firstname || ' ' || b.lastname AS assignee,
      a.title,
      a.due_date,
      a.status,
      a.planed_effort,
      a.effort
   FROM tasks AS a
   INNER JOIN users AS b
      ON a.assignee = b.id
   WHERE ( a.status NOT IN ( 5, 6 ) ) )

--This named query will be used later  
SELECT to_nvarchar('Overdue') AS reason,
       *
FROM lt_tasks_to_check
WHERE due_date < to_date('2017-12-01')
UNION ALL
SELECT to_nvarchar('Check estimate') AS reason,
       *
FROM lt_tasks_to_check
WHERE planed_effort <= effort * 1.1;
