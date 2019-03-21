-- Listing 6.26.sql
-- Example for calcluation the greatest common divisor
 
CREATE FUNCTION udf_gcd(iv_number1 INT,
                        iv_number2 INT )
RETURNS rv_ggt INT
AS BEGIN 
   DECLARE lv_number1 INT DEFAULT :iv_number1;
   DECLARE lv_number2 INT DEFAULT :iv_number2;
   DECLARE lv_cnt INT DEFAULT 0;

   WHILE lv_number1 <> lv_number2 DO
   --FOR lv_cnt IN 0..100 DO
      DECLARE lv_lower INT DEFAULT 0;
      DECLARE lv_higher INT DEFAULT 0;
      --IF lv_number1 = lv_number2 THEN BREAK;
      --END IF;
   
      (lv_lower, lv_higher) = udf_sort_2(:lv_number1, 
                                         :lv_number2);
      lv_number1 = :lv_higher - :lv_lower;
      lv_number2 = :lv_lower;
   END WHILE;
   --END FOR;
   rv_ggt = :lv_number1;
END;
