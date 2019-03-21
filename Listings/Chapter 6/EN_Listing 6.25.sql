-- Listing 6.25.sql
-- Example of a WHILE Loop
 
CREATE FUNCTION udf_factorial ( IN iv_value INT)
RETURNS rv_result INT 
AS BEGIN
   DECLARE lv_counter INT = 1;
   rv_result = 1;
   WHILE lv_counter <= iv_value DO
      rv_result = rv_result * lv_counter;
      lv_counter = lv_counter + 1;
   END WHILE;
END;
 
SELECT udf_factorial( 10 ) FROM dummy;

DROP FUNCTION udf_factorial;
