-- Listing 4.21.sql
-- Output of a date as data type DATE and VARCHAR

CREATE TABLE date_values(line INT,date_val DATE) ;
INSERT INTO date_values VALUES(1,'1.12.2017') ;
INSERT INTO date_values VALUES(2,'2017.12.02') ;
SELECT line,
       date_val      ,
       to_varchar(date_val) as as_char
   FROM date_values;
DROP TABLE date_values;
