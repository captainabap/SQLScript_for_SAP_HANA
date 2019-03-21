-- Listing 3.31.sql
-- Comparison with LIKE and ESCAPE 
 
SELECT table_name
FROM tables
WHERE table_name LIKE 'P$_%' ESCAPE '$'
