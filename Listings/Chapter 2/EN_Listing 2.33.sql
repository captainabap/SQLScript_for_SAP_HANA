-- Listing 2.33.sql
-- Determination of the shipping price with an UDF

CREATE FUNCTION udf_shipping_price (
   iv_length INT,
   iv_width INT,
   iv_height INT,
   iv_weight INT,
   iv_is_small_Parcel VARCHAR(1),
   iv_is_online VARCHAR(1)
   )
RETURNS rv_price DEC(17,2),
        rv_message NVARCHAR(30)
AS
BEGIN
   DECLARE lv_size_category INT;
   DECLARE lv_price_class VARCHAR(3);
   DECLARE lv_belt_dimension INT;
   
   --Determining the size category
   lv_size_category = udf_size_category(:iv_length,
                                        :iv_width, 
                                        :iv_height);

   --Determining the belt dimension
   lv_belt_dimension = udf_belt_dimension(:iv_length, 
                                          :iv_width, 
                                          :iv_height);

  --Determining the price class
   call pr_price_class(:lv_size_category, 
                       :iv_weight, 
                       :lv_belt_dimension,
                       :iv_is_small_Parcel,
                       lv_price_class,
                       rv_message);             

  --Deriving the price using the price class
   rv_price = udf_price(:lv_price_class, 
                        :iv_is_online);
END;  
