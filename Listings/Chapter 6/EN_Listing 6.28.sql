-- Listing 6.28.sql
-- Example of a FOR loop over a cursor with parameter
 
CREATE PROCEDURE close_projects
AS
BEGIN
   DECLARE CURSOR lc_projects (iv_status INT)
      FOR SELECT id
          FROM projects
          WHERE status = :iv_status;
          
   FOR ls_projects AS lc_projects(5) --Status = Closed
      DO CALL close_tasks(ls_projects.id);
   END FOR;
END;
