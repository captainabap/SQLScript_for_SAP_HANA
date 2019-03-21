-- Listing 7.8.sql
-- Example of the definition of a table type and use in a procedure definition

CREATE TYPE my_type AS TABLE(
   col1 INT,
   col2 VARCHAR(10) ); 

CREATE PROCEDURE my_procedure( IN it_data my_type )
AS BEGIN
...
