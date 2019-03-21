-- Listing 11.3.sql
-- Two procedures for debugging

DROP PROCEDURE A;DROP PROCEDURE B;
CREATE PROCEDURE A (IN iv_id INT, OUT ot_users users)
AS BEGIN
  ot_users = SELECT * 
                       FROM users 
                       WHERE id >= :iv_id 
                         and id <= :iv_id + 5;
END;

CREATE PROCEDURE B (OUT ot_users users)
AS BEGIN
  CALL A(iv_id=>'1', ot_users=>lt_tmp1);
  CALL A(iv_id=>'20', ot_users=>lt_tmp20);
  ot_users = SELECT * FROM :lt_tmp1
                UNION
                SELECT * FROM :lt_tmp20;
END;

CALL B(?);
