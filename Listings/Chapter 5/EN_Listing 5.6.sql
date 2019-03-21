-- Listing 5.6.sql
-- Example of a simple UPDATE Statement
 
UPDATE table_2 
   SET value1 = 'Updated',
       value2 = 'Line ' || key1
   WHERE key1 < 300;
