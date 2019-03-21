-- Listing 2.30.sql
-- UDF with multiple return values

CREATE FUNCTION udf_now
RETURNS rv_time TIME,
        rv_date DATE
AS BEGIN
  rv_date = CURRENT_DATE;
  rv_time = CURRENT_TIME;
END;

SELECT udf_now().rv_date,
       udf_now().rv_time
       FROM DUMMY; 
