-- Listing 6.20.sql
-- Example of nested IF statements
 
CREATE FUNCTION udf_display_name(lv_firstname      NVARCHAR(20),
                                 lv_lastname     NVARCHAR(20),
                                 lv_middlename NVARCHAR(20)) 
RETURNS rv_name NVARCHAR(65)
AS BEGIN
   IF lv_firstname  IS NOT NULL AND 
      lv_lastname   IS NOT NULL AND 
      lv_middlename IS NOT NULL 
   THEN
      DECLARE lv_initial NVARCHAR(1);
      lv_initial = LEFT(lv_middlename,1) ;
      IF lv_initial<>'' 
      THEN
         rv_name = lv_firstname || ' ' || lv_initial
                            || '. ' || lv_lastname;
      ELSE
         rv_name = lv_firstname || ' ' || lv_lastname;
      END IF;
   ELSEIF lv_firstname  IS NOT NULL AND 
          lv_lastname IS NOT NULL 
   THEN
      rv_name = lv_firstname || ' ' || lv_lastname;
   ELSEIF lv_lastname IS NOT NULL 
   THEN
      rv_name = lv_lastname;
   ELSEIF lv_firstname IS NOT NULL 
   THEN
      rv_name = lv_firstname;
   ELSE
      rv_name = '';
   END IF;
END;
   
SELECT udf_display_name('Jörg','Brandeis','Roland') 
   FROM dummy
UNION SELECT udf_display_name('Jörg','Brandeis',NULL)
   FROM dummy
UNION SELECT  udf_display_name(NULL,'Brandeis',NULL)
   FROM dummy;

DROP FUNCTION udf_display_name;
