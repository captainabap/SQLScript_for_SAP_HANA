-- Listing 2.27.sql
-- Example of a scalar UDF

CREATE FUNCTION udf_name ( iv_firstname NVARCHAR(20),
                           iv_lastname NVARCHAR(20) )
RETURNS rv_name NVARCHAR(42)
AS BEGIN
   rv_name = :iv_lastname || ', ' || :iv_firstname;
END;
