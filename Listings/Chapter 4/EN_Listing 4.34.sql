-- Listing 4.34.sql
-- Basic arithmetic operations in SQL

CREATE TABLE calc( value1 INTEGER,
		           value2 INTEGER ) ;

INSERT INTO calc VALUES(1,1) ;
INSERT INTO calc VALUES(2,0) ;
INSERT INTO calc VALUES(0,2) ;
INSERT INTO calc VALUES(3,2) ;
SELECT
      value1-value2 AS difference,
      value1+value2 AS sum,
      value1*value2 AS product,
      CASE
         WHEN value2<>0
            THEN value1/value2
         ELSE 0
      END AS division,
      CASE
         WHEN value2<>0
            THEN MOD(value1,value2)
         ELSE 0
      END AS modulo
   FROM calc;
