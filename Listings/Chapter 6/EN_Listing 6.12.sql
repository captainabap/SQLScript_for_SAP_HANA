-- Listing 6.12.sql
-- Updating a table variable line by line with UPDATE and index-based access

DO (OUT ot_result TABLE(text NVARCHAR(100))=>?) 
BEGIN 
   DECLARE indx integer;

-- Build the table line by line
   :ot_result.INSERT(('Insert 1'), 1);
   :ot_result.INSERT(('Insert 2'), 2);
   :ot_result.INSERT(('Insert 3'), 3);
   
-- UPDATE of the lines 2 and 4    
   :ot_result.UPDATE(('Update 2'),2);
   :ot_result.UPDATE(('Update 4'),4);
   
-- Update with index-based access   
   ot_result[6] = ('Insert 6');
END;
