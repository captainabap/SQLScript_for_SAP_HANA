-- Listing 2.34.sql
-- Determination of the size category for the packages

CREATE FUNCTION udf_size_category (
   iv_length INT,
   iv_width INT,
   iv_height INT )
RETURNS rv_result INT
AS
BEGIN
   SELECT CASE 
         WHEN :iv_length <= 30
            AND :iv_width <= 30
            AND :iv_height <= 15
            THEN 1
         WHEN :iv_length <= 60
            AND :iv_width <= 30
            AND :iv_height <= 15
            THEN 2
         WHEN :iv_length <= 120
            AND :iv_width <= 60
            AND :iv_height <= 60
            THEN 3
         ELSE 4
         END
   INTO rv_result
   FROM DUMMY;
END;
