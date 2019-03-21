-- Listing 5.2.sql
-- Example of inserting with column sequence
 
INSERT INTO table_1 (key2, value1) 
       VALUES ( 2, 'Defaultvalue');
INSERT INTO table_1 (value1, key1, key2) 
       VALUES ('Changed columns', 2, 3);
