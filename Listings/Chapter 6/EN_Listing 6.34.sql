-- Listing 6.34.sql
-- The bubble-sort algorithm in SQLScript

--Create tabletype TT_VALUE for the parameters 
CREATE TYPE tt_value AS TABLE(val nvarchar(30));

--Create the function
CREATE FUNCTION udf_sort(in it_table tt_value)
RETURNS tt_value
AS BEGIN
   DECLARE la_value      NVARCHAR(30) ARRAY;
   DECLARE lv_linecount INT;          --Number of lines
   DECLARE lv_round     INT;          --Current round
   DECLARE lv_line      INT;          --Current line
   DECLARE lv_tmp       NVARCHAR(30); --For the exchange

   --Conversion of the table in an array: 
   la_value = ARRAY_AGG(:it_table.val);
 
   --Determine the number of rows:
   SELECT COUNT(*) INTO lv_linecount FROM :it_table;
   
   FOR lv_round IN 1..:lv_linecount DO
     FOR lv_line IN 2..:lv_linecount DO
       IF :la_value[:lv_line-1] > :la_value[:lv_line] 
       THEN --Exchange: 
          lv_tmp = :la_value[:lv_line-1];
          la_value[:lv_line-1] = :la_value[:lv_line];
          la_value[:lv_line] = :lv_tmp;
       END IF;
     END FOR; --Line
   END FOR; --Round

   --Conversion of the sorted array in a table:
   rt_result = UNNEST(:la_value) AS (val);
   RETURN :rt_result;
END;