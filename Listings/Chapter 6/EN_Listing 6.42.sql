-- Listing 6.42.sql
-- Dynamic selection from a table variable 

CREATE PROCEDURE dynsel_from_local_table
   ( OUT ov_count INT )
AS BEGIN
   lt_tmp = SELECT id FROM tasks;
   EXECUTE IMMEDIATE 'SELECT COUNT(*) FROM :lt_tmp' 
           INTO ov_count
           USING :lt_tmp;
END;

CALL dynsel_from_local_table(?);	 
