-- Listing 2.5.sql
-- access to local variables and parameters
CREATE PROCEDURE get_name(IN id INT)
AS BEGIN
   tmp = SELECT id, lastname, firstname FROM users;
   SELECT * FROM :tmp WHERE id = :id; 
END;
CALL get_name(1);
