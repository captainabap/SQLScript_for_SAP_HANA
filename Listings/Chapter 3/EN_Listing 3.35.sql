-- Listing 3.35.sql
-- CASE-Expression in a WHERE-clause
  
CREATE TABLE t_fiscper (fiscper3 VARCHAR(3));

INSERT INTO t_fiscper VALUES ('000');
INSERT INTO t_fiscper VALUES ('001');
INSERT INTO t_fiscper VALUES ('002');
INSERT INTO t_fiscper VALUES ('003');

CREATE PROCEDURE where_clause (IN iv_fiscper3 VARCHAR(3))
AS
BEGIN
   SELECT *
   FROM t_fiscper
   WHERE fiscper3 LIKE CASE :iv_fiscper3
         WHEN ''
            THEN '%'
         ELSE :iv_fiscper3
         END
      AND fiscper3 IS NOT NULL;
END;

CALL where_clause('');
CALL where_clause('000');
CALL where_clause('001');

DROP TABLE t_fiscper;
DROP PROCEDURE where_clause;
