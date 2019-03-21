-- Listing 3.13.sql
-- Usage of a scalar UDF in the field list

SELECT get_parcel_price(width, height, depth, weight ) 
   FROM parcels;
