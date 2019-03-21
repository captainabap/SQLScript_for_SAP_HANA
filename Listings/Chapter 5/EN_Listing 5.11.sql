-- Listing 5.11.sql
-- Example for the MERGE INTO statement
 
DELETE FROM table_1;
DELETE FROM table_2;
INSERT INTO table_2 VALUES(1, '', 'First row');
INSERT INTO table_2 VALUES(2, '', 'Second row');
INSERT INTO table_2 VALUES(3, '', 'Third row');
INSERT INTO table_2 VALUES(4, '', 'Forth row');

MERGE INTO table_1
     USING table_2
     ON (table_1.key1 = table_2.key1)
     WHEN MATCHED THEN 
          UPDATE SET table_1.key1  = table_2.key1,
                     table_1.key2  = 1,
                     table_1.value1 = 'UPDATE: ' 
                                       || table_1.value1
     WHEN NOT MATCHED THEN 
          INSERT VALUES( table_2.key1, 
                         1,
                         'INSERT: ' || table_2.value2);
                         
MERGE INTO table_1
     USING table_2
     ON (table_1.key1 = table_2.key1)
     WHEN MATCHED THEN 
          UPDATE SET table_1.key1  = table_2.key1,
                     table_1.key2  = 1,
                     table_1.value1 = 'UPDATE: ' 
                                       || table_1.value1
     WHEN NOT MATCHED THEN 
          INSERT VALUES( table_2.key1, 
                         1,
                         'INSERT: ' || table_2.value2);

SELECT * FROM table_1;
