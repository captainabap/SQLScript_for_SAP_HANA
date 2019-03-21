-- Listing 6.41.sql
-- Example for input parameters in dynamic SQL 

CREATE PROCEDURE count_id( IN iv_maxid INT, 
                           OUT ov_count1 INT,
                           OUT ov_count2 INT,
                           OUT ov_count3 INT )
AS BEGIN
   EXEC 'SELECT COUNT(*) FROM tasks WHERE id < ?' 
        INTO ov_count1 
        USING :iv_maxid;

-- With named parameters
   EXEC 'SELECT COUNT(*) FROM tasks WHERE id < :iv_maxid' 
        INTO ov_count2 
        USING :iv_maxid;

-- With dynamic generated SQL statement
   EXEC 'SELECT COUNT(*) FROM tasks WHERE id <' 
       || :iv_maxid 
      INTO ov_count3;
END;

CALL count_id( 10, ?, ?, ?);