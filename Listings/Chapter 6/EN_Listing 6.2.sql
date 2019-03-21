-- Listing 6.2.sql
-- Missing initialization of a variable

DO BEGIN
   DECLARE lv_sum INT ; 
   DECLARE lv_indx INT;
       
   FOR lv_indx IN 1..10 DO 
      lv_sum = :lv_sum + 10;
   END FOR;
    
   SELECT :lv_sum FROM dummy;

END ;
