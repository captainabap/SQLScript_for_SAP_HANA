-- Listing 6.13.sql
-- Examples of the different variants of deleting rows from a table variable

DO (OUT ot_result TABLE(text NVARCHAR(100))=>?) 
BEGIN 
   DECLARE lv_index INT;
   DECLARE lv_del INT ARRAY = ARRAY(1, 3);
   
-- Build a table with the rows 1 t0 10
   FOR lv_index IN 1..10 DO
      :ot_result.INSERT(('Line '||lv_index), lv_index);
   END FOR;
   
-- Deletion of the line at index 9   
   :ot_result.DELETE(9);
   
-- Deletion of the lines 5 to 7   
   :ot_result.DELETE(5..7);
   
-- Deletion of the lines from the array LV_DEL   
   :ot_result.DELETE(:lv_del);
   
END;
