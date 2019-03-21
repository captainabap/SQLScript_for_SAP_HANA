-- Listing 4.35.sql
-- Examples of rounding functions

CREATE TABLE calc( val double) ;

INSERT INTO calc VALUES(1) ;
INSERT INTO calc VALUES(1.1) ;
INSERT INTO calc VALUES(-1.1) ;
INSERT INTO calc VALUES(1.499999) ;
INSERT INTO calc VALUES(1.500000) ;
INSERT INTO calc VALUES(-1.499999) ;
INSERT INTO calc VALUES(-1.500000) ;
INSERT INTO calc VALUES(1.749999) ;
INSERT INTO calc VALUES(1.750000) ;
INSERT INTO calc VALUES(175) ;

SELECT
     val,
     CEIL(val) AS ceiling,
     FLOOR(val) AS floor,
     ROUND(val, 0, ROUND_HALF_UP) AS rhu_0,
     ROUND(val, 0, ROUND_UP) AS ru_0,
     ROUND(val, 1, ROUND_HALF_UP) AS rhu_1,
     ROUND(val, 1, ROUND_UP) AS ru_1,
     ROUND(val, -1) AS rhu_m1
   FROM calc;

DROP TABLE calc;
