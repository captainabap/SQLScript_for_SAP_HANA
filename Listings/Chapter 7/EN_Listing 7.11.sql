-- Listing 7.11.sql
-- Example for the use of a sequence
 
CREATE SEQUENCE countdown INCREMENT BY-1
                          MAXVALUE 10
                          MINVALUE 0
                          CYCLE;
DO BEGIN
   DECLARE lv_counter INT;
   DECLARE lv_tmp INT;
   DECLARE la_array INT ARRAY;

   FOR lv_counter IN 1..100 DO
      SELECT countdown.nextval
         INTO lv_tmp
         FROM DUMMY;
      la_array[:lv_counter] = lv_tmp;
   END FOR;
   lt_output = UNNEST(:la_array);
   SELECT *
      FROM :LT_OUTPUT;
END;
