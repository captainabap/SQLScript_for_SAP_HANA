-- Listing 2.9.sql
-- Selection of a column with NULL values
CREATE TABLE test_null(
	id INT,
	name VARCHAR(10)
);
INSERT INTO test_null VALUES(1, 'Peter');
INSERT INTO test_null VALUES(2, 'Paul');
INSERT INTO test_null VALUES(3, 'Petra');
INSERT INTO test_null VALUES(4, 'Andrea');
INSERT INTO test_null(id) VALUES(5);

SELECT * FROM test_null WHERE name LIKE 'P%';

SELECT * FROM test_null WHERE name NOT LIKE 'P%';

DROP TABLE test_null; --to delete the table
