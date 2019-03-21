-- Listing 6.17.sql
-- Example of a global temporary table

CREATE GLOBAL TEMPORARY TABLE test_gtt (id INT, 
                                        text NVARCHAR(40));
INSERT INTO test_gtt ( SELECT id,  title FROM tasks);
SELECT * FROM test_gtt;
