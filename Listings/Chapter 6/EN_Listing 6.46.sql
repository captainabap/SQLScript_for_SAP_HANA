-- Listing 6.46.sql
-- Example of error handling for procedure calls

CREATE PROCEDURE raise_my_error
AS
BEGIN
-- Declarations
   DECLARE my_error CONDITION FOR SQL_ERROR_CODE 10001;

-- Statements
   SIGNAL my_error;
END;

CREATE PROCEDURE catch_my_error
AS
BEGIN
-- Declarations
   DECLARE my_error CONDITION FOR SQL_ERROR_CODE 10001;  
   
-- Error handling   
   DECLARE EXIT HANDLER FOR my_error 
      CALL write_error_log(::SQL_ERROR_CODE, 'Cached!');
	  
-- Statements
   CALL raise_my_error();
END;

CALL catch_my_error;
CALL show_error_log();

DROP PROCEDURE raise_my_error;
DROP PROCEDURE catch_my_error;
