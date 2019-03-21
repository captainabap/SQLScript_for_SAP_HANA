-- Listing 6.29.sql
-- Example for the use of a cursor

DO ( OUT ov_all_titles NVARCHAR(900) => ?)
BEGIN
   lt_tasks = SELECT TOP 10 title FROM tasks;
   ov_all_titles = '';

   BEGIN
      DECLARE CURSOR lc_tasks
         FOR SELECT title FROM :lt_tasks;

      DECLARE lv_indx INT;
      DECLARE lv_title NVARCHAR(40);

      OPEN lc_tasks;
      WHILE 1 <> 2 DO
         FETCH lc_tasks INTO lv_title;
         IF lc_tasks::NOTFOUND THEN 
            BREAK;
         END IF;
         ov_all_titles = ov_all_titles || ' - ' || lv_title;
      END WHILE;
      CLOSE lc_tasks;
   END;
END;
