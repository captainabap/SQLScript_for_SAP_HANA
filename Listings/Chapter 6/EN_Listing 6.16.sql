-- Listing 6.16.sql
-- Use of session variables
 
DO BEGIN
SET 'TESTVARIABLE' = 'TESTVALUE';
SELECT session_context( 'TESTVARIABLE' ) FROM dummy;
END;
