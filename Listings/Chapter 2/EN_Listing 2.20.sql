-- Listing 2.20.sql
-- Definition of a procedure with default values

CREATE PROCEDURE default_values (
   IN iv_max_id INT DEFAULT 10,
      it_table tasks DEFAULT tasks )
AS
BEGIN
   SELECT id,
          title
   FROM :it_table
   WHERE id <= :iv_max_id;
END;

--Calling the procedure without parameters
call default_values();

--Clean up
DROP PROCEDURE default_values;
