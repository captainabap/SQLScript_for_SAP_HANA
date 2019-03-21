-- Listing 4.2.sql
-- Example for the behaviour of data type ALPHANUM

CREATE TABLE strings  (
     row_nr INT,
     col_alphanum ALPHANUM(4)  );

INSERT INTO strings VALUES ( 1,'12');
INSERT INTO strings VALUES ( 2,'012');
INSERT INTO strings VALUES ( 3,'0012');
INSERT INTO strings VALUES ( 4,'2');
INSERT INTO strings VALUES ( 5,'20');
INSERT INTO strings VALUES ( 6,'2a');
INSERT INTO strings VALUES ( 7,'a2');

SELECT *
FROM   strings
ORDER  BY col_alphanum;

DROP TABLE strings;
