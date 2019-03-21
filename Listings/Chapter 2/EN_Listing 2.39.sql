-- Listing 2.39.sql
-- Table for test data

CREATE TABLE test_shipping_prices(
   length INT,
   width INT,
   height INT,
   weight INT,
   is_small_Parcel VARCHAR(1),
   is_online VARCHAR(1),
   expected_price DEC(17, 2)
   );
