-- Listing 5.12.sql
-- MERGE INTO with local table variable
 
DO BEGIN
   lt_tmp = select * from table_2;
   MERGE INTO table_1
        USING :lt_tmp as t2
        ON (table_1.key1 = t2.key1) 
     WHEN MATCHED THEN 
          UPDATE SET table_1.key1  = t2.key1,
                     table_1.key2  = 1,
                     table_1.value1 = 'UPDATE: ' 
                                       || table_1.value1
     WHEN NOT MATCHED THEN 
          INSERT VALUES( t2.key1, 
                         1,
                         'INSERT: ' || t2.value2);
END; 
