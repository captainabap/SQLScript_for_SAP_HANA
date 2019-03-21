-- Listing 6.35.sql
-- Test of the sorting algorithm with data

DO BEGIN
   DECLARE lt_testdata tt_value;
   DECLARE la_testdata NVARCHAR(30) ARRAY ;  
   
   la_testdata = ARRAY('Z', 'Y', 'B', 'A');
   
   lt_testdata = UNNEST(:la_testdata) AS ( val );
   
   SELECT * FROM udf_sort(:lt_testdata);
END;
