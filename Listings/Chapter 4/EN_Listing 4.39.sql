-- Listing 4.39.sql
-- Function for the representation of integers as bits

CREATE FUNCTION udf_int_as_bit_string(iv_value INT)
RETURNS rv_value VARCHAR(8)
AS BEGIN
   DECLARE lv_value INT default :iv_value;
   DECLARE lv_mod INT;
   rv_value = '';

   WHILE lv_value > 0 DO
      lv_mod = MOD(:lv_value, 2);
      IF lv_mod = 1 THEN
        rv_value = '1' || :rv_value;
      ELSE
         rv_value = '0' || :rv_value;
      END IF;
      lv_value = lv_value / 2;
   END WHILE;
   rv_value = LPAD(rv_value, 8, '0');
END;
