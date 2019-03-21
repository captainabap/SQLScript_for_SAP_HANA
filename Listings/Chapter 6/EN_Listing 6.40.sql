-- Listing 6.40.sql
-- Transfer several scalar variables from a dynamic SQL query

CREATE PROCEDURE get_min_max
               (IN  iv_column NVARCHAR(30),
                IN  iv_table  NVARCHAR(30),
                OUT ev_min NVARCHAR(100),
                OUT ev_max NVARCHAR(100) )
AS BEGIN
      DECLARE lv_sql NVARCHAR(1000) DEFAULT '';
   lv_sql = 'SELECT MIN(' || :iv_column 
               ||'),MAX(' || :iv_column 
               ||') FROM '|| :iv_table;
   EXEC lv_sql INTO ev_min, ev_max;
END;

CALL get_min_max( 'TITLE', 'TASKS', ?, ?);
