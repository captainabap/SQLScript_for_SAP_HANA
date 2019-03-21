-- Listing 6.43.sql
-- Dynamic filtering with APPLY_FILTER
 
CREATE PROCEDURE filtered_tasks (
   IN iv_where VARCHAR(100),
   OUT rt_result TABLE ( id INT,
                         status INT,
                         title NVARCHAR(40)  ) )
AS BEGIN
   lt_tmp = APPLY_FILTER(tasks, :iv_where);

   rt_result = SELECT id,
                      status,
                      title
                 FROM :lt_tmp;
END;

CALL filtered_tasks('status in ( 1, 2)', ?);
