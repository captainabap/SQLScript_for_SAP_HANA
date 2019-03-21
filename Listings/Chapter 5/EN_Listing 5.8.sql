-- Listing 5.8.sql
-- Example of inserting and updating using the primary key

DELETE FROM table_1;
DELETE FROM table_2;
--Insert single records
UPSERT table_1 VALUES(1, 1, 'Inserted with UPSERT') 
       WITH PRIMARY KEY;
UPSERT table_1 VALUES(1, 2, 'Inserted with UPSERT') 
       WITH PRIMARY KEY;
UPSERT table_1 VALUES(1, 3, 'Inserted with UPSERT') 
       WITH PRIMARY KEY;
--Update a record using the primary key
UPSERT table_1 VALUES(1, 2, 'Changed with UPSERT') 
       WITH PRIMARY KEY;

SELECT * FROM table_1;
