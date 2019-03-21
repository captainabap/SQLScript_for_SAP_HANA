-- Listing 6.10.sql
-- Example for inserting a table variable line by line with INSERT

DO (OUT rt_result TABLE( id INT, 
                         text1 NVARCHAR(50),
                         text2 NVARCHAR(50))=>? )
BEGIN
   DECLARE lv_index INT;

   FOR lv_index IN 1..5
   DO
-- Inserting all columns at position 1
      :rt_result.INSERT((lv_index, 
                         'Insert '||lv_index, '')
                         , 1);
   END FOR;
   
   FOR lv_index IN 1..5
   DO
-- Append to the table, only for two columns
      :rt_result.(id, text2).INSERT((lv_index, 
                                     'Append '||lv_index));
   END FOR;
END;
