-- Listing 5.7.sql
-- Example of an UPDATE statement with reference to another table

UPDATE table_2 as t2     --or: UPDATE t2
   SET t2.value1 = t1.value1
   FROM table_2 as t2, 
        table_1 as t1
   WHERE t2.key1 = t1.key1 + t1.key2 * 100;
