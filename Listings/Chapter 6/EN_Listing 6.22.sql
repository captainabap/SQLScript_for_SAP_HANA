-- Listing 6.22.sql
-- Function UDF_SORT_3 for sorting three numbers

CREATE FUNCTION udf_sort_3(iv_value1 INT,
                           iv_value2 INT,
                           iv_value3 INT )
RETURNS rv_lower  INT,
        rv_middle INT,
        rv_higher  INT
AS BEGIN
   --Initial assignment (probably wrong)
   rv_lower  = :iv_value1;
   rv_middle = :iv_value2;
   rv_higher  = :iv_value3;
   
   --Exchange until sorting is correct
   (rv_lower, rv_middle) = udf_sort_2(rv_lower, rv_middle);
   (rv_lower, rv_higher)  = udf_sort_2(rv_lower, rv_higher);
   (rv_middle, rv_higher) = udf_sort_2(rv_middle, rv_higher);
END;
