-- Listing 5.5.sql
-- INSERT with query to a local table variable and changed column order

DO BEGIN
   lt_tmp = SELECT key1 + 10 as key1,
            key2,
            'Copy: '|| value1 as value1
          FROM table_1;
          
   INSERT INTO table_1 
          (value1, key1, key2)
          SELECT value1, 
                 key1, 
                 key2 
          FROM :lt_tmp;
END;
