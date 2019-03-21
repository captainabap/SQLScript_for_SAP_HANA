-- Listing 6.4.sql
-- Example for SELECT INTO in several scalar variables

DO BEGIN
  DECLARE lv_assignee INT;
  DECLARE lv_status INT;

  SELECT assignee,
         status
  INTO lv_assignee , 
       lv_status
  FROM tasks
  WHERE id = 1;
  
  SELECT lv_assignee, 
         lv_status FROM DUMMY;
END;