-- Listing 6.47.sql
-- Forwarding errors with RESIGNAL

CREATE PROCEDURE demo_resignal
AS BEGIN
   DECLARE EXIT HANDLER FOR SQLEXCEPTION
   BEGIN --Block for error handling
      IF ::sql_error_code > 219 --These could be interesting
      THEN 
         CALL write_error_log(::sql_error_code,
                              ::sql_error_message);
      ELSE
         RESIGNAL;--Better abort with these errors
      END IF;
   END;--End of the error handling
     
     ...
END;
