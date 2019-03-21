-- Listing 6.18.sql
-- Example of a local temporary table

CREATE LOCAL TEMPORARY TABLE #test_ltt (id INT, 
                                        text NVARCHAR(40));
INSERT INTO #test_ltt ( SELECT id,  title FROM tasks);
SELECT * FROM #test_ltt;
