-- Listing 2.16.sql
-- Anonymous block with parameters

DO (IN  iv_status INT => 1, 
    OUT ot_tasks TABLE ( id INT,
                        title NVARCHAR(40) ) => ?)
BEGIN
   ot_tasks =  SELECT id,
                      title
                  FROM tasks
                  WHERE status = :iv_status;
END;