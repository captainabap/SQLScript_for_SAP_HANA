-- Listing 5.3.sql
-- Example of an INSERT statement with multiple data records
 
INSERT INTO table_2 
       SELECT key1 + key2 * 100, 
              value1, 
              'Insert from a query'
       FROM table_1;
