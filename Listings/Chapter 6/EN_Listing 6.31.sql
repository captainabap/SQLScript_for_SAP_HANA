-- Listing 6.31.sql
-- ARRAYs in SQLScript sourcecode
 
DO BEGIN
   DECLARE i INT;
   DECLARE demo VARCHAR(20) ARRAY;

-- Insert 10 elements in the ARRAY
   FOR i IN 1..10 DO
      demo[:i] = concat ('Value ', :i);
   END FOR;
   
   SELECT :demo[10] FROM dummy;
   
-- Remove the last 5 elements
   demo = TRIM_ARRAY( :demo, 5 );
   SELECT :demo[1],
          :demo[5],
          :demo[10]
       FROM dummy;
       
-- Insert an element at position 20
   demo[20] = 'Last Element';
   SELECT :demo[5],
          :demo[10],
          :demo[20]
       FROM dummy;
END;
