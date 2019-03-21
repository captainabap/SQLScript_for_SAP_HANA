-- Listing 2.31.sql
-- Simultaneous assignment of all return values of a UDF 
DO BEGIN
   DECLARE lv_time TIME;
   DECLARE lv_date DATE;
 
   (lv_time, lv_date) = udf_now();
   
   SELECT lv_date, lv_time FROM DUMMY;
END;
