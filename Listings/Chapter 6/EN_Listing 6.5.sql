-- Listing 6.5.sql
-- Example of error processing for SELECT INTO

  
CREATE PROCEDURE get_assignee_status
       (IN  iv_id INT,
        OUT ov_assignee INT,
        OUT ov_status INT  )
AS BEGIN
--Up to HANA 2.0 SPS03:
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
     BEGIN
        ov_assignee = -1;
        ov_status     = -1;
     END;
     
  SELECT assignee,
         status
  INTO ov_assignee , 
       ov_status
  DEFAULT -1,    --From HANA 2.0 SPS03: Defaultdvalues
          -1     --for variables at the assignment
  FROM tasks
  WHERE id = iv_id;
  
END;

CALL get_assignee_status(1, ?, ?);
CALL get_assignee_status(-1, ?, ?);
