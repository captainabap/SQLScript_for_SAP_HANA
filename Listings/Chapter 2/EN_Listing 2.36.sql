-- Listing 2.36.sql
-- Function for calculating the belt dimension

CREATE FUNCTION udf_belt_dimension(iv_length INT,
                                   iv_width INT,
                                   iv_height INT )
RETURNS rv_result INT
AS
BEGIN
   rv_result = :iv_length  
                + (2 * :iv_width) 
                + (2 * :iv_height);
END;
