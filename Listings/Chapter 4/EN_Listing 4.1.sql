-- Listing 4.1.sql
-- Example for the handling of data type VARCHAR

CREATE TABLE tab1  (
     row_nr INT,
     col_alphanum ALPHANUM(4),
     col_varchar VARCHAR(4),
     col_nvarchar NVARCHAR(4)
  );

INSERT INTO tab1 VALUES ( 1,'碼'   , '碼'  , '碼'   );
INSERT INTO tab1 VALUES ( 2,'碼碼' , '碼碼', '碼碼' );
INSERT INTO tab1 VALUES ( 3,'abcd' , 'abcd', 'abcd' );
INSERT INTO tab1 VALUES ( 4,'Jörg' , 'Jörg', 'Jörg' );
INSERT INTO tab1 VALUES ( 5,'öö'   , 'öö'  , 'öö'   );

SELECT row_nr,
       col_alphanum,
       col_varchar,
       col_nvarchar,
       TO_NVARCHAR(col_varchar) AS decoded
       FROM   tab1 ;

DROP TABLE tab1;
