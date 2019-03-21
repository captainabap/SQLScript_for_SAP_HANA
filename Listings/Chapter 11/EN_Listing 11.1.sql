-- Listing 11.1.sql
-- Development cycle in one script

--Delete database objects
DROP TABLE test_square;
DROP FUNCTION udf_square;

--Create function
CREATE FUNCTION udf_square(IN iv_value INT) 
RETURNS rv_result INT 
AS BEGIN
  rv_result = iv_value * iv_value; 
END;

--Create testcases
CREATE TABLE test_square(value INT, square INT);
INSERT INTO test_square VALUES (0,0);
INSERT INTO test_square VALUES (1,1);
INSERT INTO test_square VALUES (2,4);
INSERT INTO test_square VALUES (-1,1);
INSERT INTO test_square VALUES (-2,4);

--Execute testcases
SELECT value, 
       square AS expected_value,
       udf_square(value) AS result,
       CASE WHEN udf_square(value) = square
            THEN 'OK'
            ELSE 'Error'
            END AS testresult
FROM test_square;
