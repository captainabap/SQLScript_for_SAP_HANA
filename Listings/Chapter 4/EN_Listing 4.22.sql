-- Listing 4.22.sql
-- Generation and display of the empty date

CREATE TABLE date_values(line INT,date_val DATE) ;
INSERT INTO date_values VALUES(1,'0') ;
INSERT INTO date_values VALUES(2,'') ;
INSERT INTO date_values VALUES(3,'0000-00-00') ;
INSERT INTO date_values VALUES(4,'00000000') ;--ABAP
INSERT INTO date_values VALUES(5,'0001-01-01') ;
SELECT line,
       date_val,
       to_varchar(date_val) as as_char,
       days_between(date_val, '00001-01-10')as Delta
   FROM date_values;
DROP TABLE date_values;
