-- Listing 6.33.sql
-- Conversion of a table column into an array and query of the cardinality
 
DO BEGIN
   DECLARE lv_cardinality INT;
   DECLARE la_assignee INT ARRAY;

   lt_tasks = SELECT DISTINCT assignee FROM tasks;
   la_assignee = ARRAY_AGG(:lt_tasks.assignee);
   lv_cardinality = CARDINALITY(:la_assignee);
   SELECT :lv_cardinality
      FROM DUMMY;
END;
