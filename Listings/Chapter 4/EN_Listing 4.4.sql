-- Listing 4.4.sql
-- Concatination of character strings

CREATE column TABLE tab(col1 nvarchar(10) ,
                        col2 nvarchar(10)) ;
INSERT INTO tab VALUES(' ' , 'A' ) ;
INSERT INTO tab VALUES('A ', ' B') ;
INSERT INTO tab VALUES(' A', 'B ') ;
SELECT '"' || col1 || col2 || '"' AS "|| Operator" ,
       concat(concat('"' , col1) ,
	          concat(col2, '"')) AS "CONCAT Function"
FROM tab;
DROP TABLE tab;

