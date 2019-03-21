-- Listing 6.38.sql
-- Example of dynamic SQL with a local temporary table
 
DO BEGIN 
DECLARE lv_statement VARCHAR(1000);
DECLARE CURSOR lr_tables 
   FOR SELECT table_columns.table_name 
          FROM table_columns 
          INNER JOIN tables 
          ON table_columns.table_Name = tables.table_name 
          AND table_columns.schema_name = tables.schema_name
          AND tables.is_user_defined_type = 'FALSE'
          WHERE table_columns.schema_name = current_schema
           AND column_name = 'ID';
--Create the LTT
CREATE LOCAL TEMPORARY TABLE #max_id(table_name NVARCHAR(256)
                                     , max_id INT );    

FOR ls_tables AS lr_tables DO   
--Building the INSERT-Statement
   lv_statement = 'INSERT INTO  #max_id  SELECT ''' 
               || ls_tables.table_name 
               || ''' AS table_name, max(ID) AS max_id FROM '
               || ls_tables.table_name || ';';
--Execution of the dynamic SQL
EXEC  :lv_statement ;
END FOR;

--Fetch the result from the LTT
SELECT * FROM #max_id ORDER BY MAX_ID DESC;
END;