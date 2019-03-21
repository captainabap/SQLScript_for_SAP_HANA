-- Listing 2.19.sql
-- Example of creating, executing, and deleting a simple procedure

CREATE PROCEDURE parameter_test (

-- Scalar data type as input parameter
   IN iv_project INT,  
        
-- Database table as type for an output parameter
   OUT ot_tasks tasks,   

-- A table type for an output parameter
   OUT ot_status_text id_text, 

-- Definition of the table type in the code:
   OUT ot_remaining_effort TABLE ( task INT,               
                                   remaining_effort INT ) )
AS
BEGIN
   ot_tasks = SELECT *
              FROM tasks
              WHERE project = :iv_project;

   ot_status_text = SELECT id,
                           status_text AS TEXT
                    FROM status_text;

   ot_remaining_effort = SELECT id AS task,
                                planed_effort - effort 
                                      AS remaining_effort
                         FROM :ot_tasks;
END;

CALL parameter_test(2, ?, ?, ?);

--DROP PROCEDURE parameter_test;