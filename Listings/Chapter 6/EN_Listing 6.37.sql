-- Listing 6.37.sql
-- Example of a log procedure with an autonomous transaction. 
 
CREATE PROCEDURE write_error_log (
   IN iv_error_code INT,
   IN iv_error_message NVARCHAR(500) )
AS BEGIN
   BEGIN AUTONOMOUS TRANSACTION

      INSERT INTO error_log ( timestamp,
                              errorcode,
                              message )
      VALUES ( current_timestamp,
               :iv_error_code,
               :iv_error_message );
   END;
END;
