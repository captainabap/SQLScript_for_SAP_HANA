-- Listing 6.45.sql
-- Examples for error handling of SQL errors and user-defined errors

CREATE PROCEDURE test_error_handling( 
  IN iv_aktion VARCHAR(10)) 
AS BEGIN
-- Declarations
   DECLARE lv_tmp INT;
   DECLARE error1 CONDITION ;
   DECLARE error2 CONDITION FOR SQL_ERROR_CODE 10001 ;
   DECLARE division_durch_0 CONDITION FOR SQL_ERROR_CODE 304;
    
-- Error handler
   DECLARE EXIT HANDLER FOR error1 
       write_error_log( ::sql_error_code, 
                        ::sql_error_message );
   DECLARE EXIT HANDLER FOR error2 
      write_error_log( ::sql_error_code, 'Error 2' );
   DECLARE EXIT HANDLER FOR division_durch_0 
      write_error_log( ::sql_error_code, 
                   'SQL-Error: ' || ::sql_error_message );

-- Statements
   IF iv_aktion='F1' THEN
      SIGNAL error1 ;
    ELSEIF iv_aktion='F2' THEN
      SIGNAL error2;
    ELSEIF iv_aktion='D0' THEN
      SELECT  1/0 FROM dummy ;
    END IF;
END;

CALL test_error_handling('F1');
CALL test_error_handling('F2');
CALL test_error_handling('D0');
CALL show_error_log();
DROP PROCEDURE test_error_handling;
