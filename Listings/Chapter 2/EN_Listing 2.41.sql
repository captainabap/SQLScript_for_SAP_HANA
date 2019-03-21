-- Listing 2.41.sql
-- Execution of the tests

SELECT 
 expected_price,
 udf_shipping_price(length,
                    width,
                    height,
                    weight,
                    is_small_Parcel,
                    is_online).rv_price
                     - expected_price AS delta,
  udf_shipping_price(length,
                  width,
                  height,
                  weight,
                  is_small_Parcel,
                  is_online).rv_message AS message              
FROM test_shipping_prices
