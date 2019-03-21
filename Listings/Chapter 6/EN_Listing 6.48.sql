-- Listing 6.48.sql
-- Error handler with enhancement of database schema and procedure in error text

DECLARE EXIT HANDLER FOR SQLEXCEPTION
   RESIGNAL SET MESSAGE_TEXT = 'Procedure' 
      || ::CURRENT_OBJECT_SCHEMA 
      || '.' 
      || ::CURRENT_OBJECT_NAME 
      ||::SQL_ERROR_MESSAGE;
