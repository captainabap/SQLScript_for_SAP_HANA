-- Listing 6.11.sql
-- Tablewise insertion with the INSERT operation

DO (OUT ot_result TABLE( id INT, 
                         text1 NVARCHAR(50),
                         text2 NVARCHAR(50))=>? )
BEGIN
   DECLARE lv_index INT;
   DECLARE lt_tmp TABLE (column1 INT,
   	                     column2 NVARCHAR(50) );

-- Build table LT_TMP line by line
   :lt_tmp.INSERT((1, 'TMP_1'));
   :lt_tmp.INSERT((2, 'TMP_2'));
   
-- Build table RT_RESULT line by line   
   :ot_result.INSERT((1, 'First record ', 'A'));
   :ot_result.INSERT((2, 'Second record', 'B'));
   :ot_result.INSERT((3, 'Third record', 'C'));

-- insert table LT_TMP into RT_RESULT at index 2
   :ot_result.(id, text1).INSERT(:lt_tmp, 2);
   
END;
