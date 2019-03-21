-- Listing 3.39.sql
-- Using table variables instead of the WITH clause

DO BEGIN
--Definition of a table variable by the SELECT query
    lt_tasks_to_check = SELECT a.id, 
                b.firstname || ' ' || b.lastname AS assignee, 
                a.title, 
                a.due_date, 
                a.status, 
                a.planed_effort, 
                a.effort
            FROM tasks AS a
                INNER JOIN users AS b
                ON a.assignee = b.id
            WHERE (a.status NOT IN (5, 6));

--Usage of the table variable in both querys            
    SELECT to_nvarchar('Overdue') AS reason, 
            *
        FROM :lt_tasks_to_check
        WHERE due_date < to_date('2017-12-01')
    UNION ALL
    SELECT to_nvarchar('Check estimate') AS reason, 
            *
        FROM :lt_tasks_to_check
        WHERE planed_effort <= effort * 1.1;
END;
