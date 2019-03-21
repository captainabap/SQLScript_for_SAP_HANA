-- Listing 2.32.sql
-- Frame of the UDF_shipping price function with pseudo code

CREATE FUNCTION udf_shipping price (
   iv_length INT,
   iv_width INT,
   iv_height INT,
   iv_weight INT,
   iv_als_small_Parcel VARCHAR(1),
   iv_is_online VARCHAR(1)
   )
RETURNS rv_price DEC(17,2),
        rv_message NVARCHAR(30)
AS
BEGIN
   --Determining the size category
   --determination of the belt dimension
   --price class determination 
   --Deriving the price using the price class
END;
