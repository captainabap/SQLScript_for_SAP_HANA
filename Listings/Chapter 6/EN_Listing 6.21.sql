-- Listing 6.21.sql
-- Function UDF_SORT_2 for sorting two numbers

CREATE FUNCTION udf_sort_2(iv_value1 INT,
                           iv_value2 INT )
RETURNS rv_lower  INT,
        rv_higher  INT 
AS BEGIN
   IF iv_value1 >= iv_value2 THEN
      rv_lower = iv_value2;
      rv_higher = iv_value1;
   ELSE
      rv_lower = iv_value1;
      rv_higher = iv_value2;
   END IF;
END;
