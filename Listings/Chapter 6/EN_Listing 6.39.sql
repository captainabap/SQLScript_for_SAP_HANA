-- Listing 6.39.sql
-- Take over resultable of a dynamic SQL query in SQLScript

CREATE PROCEDURE get_column_values
               (IN  iv_column NVARCHAR(30),
                IN  iv_table  NVARCHAR(30),
                OUT ot_result TABLE(value NVARCHAR(100)))
AS BEGIN
   DECLARE lv_sql NVARCHAR(1000) DEFAULT '';
   lv_sql = 'SELECT DISTINCT '
            || :iv_column
            || ' AS value FROM '
            || :iv_table;
   EXEC lv_sql INTO ot_result;

END;

CALL get_column_values( 'TITLE', 'TASKS', ?);
