-- Listing 2.29.sql
-- Assignment of UDF results to local variables

DO BEGIN
     DECLARE lv_name NVARCHAR(42);
--Assignment of scalar UDFs to scalar variables
     lv_name = udf_name( 'Jörg', 
                         'Brandeis' );

     SELECT lv_name FROM dummy;

--Assigning a Table UDF to a Table Variable
    lt_status_texts = SELECT * FROM  udf_status_texts('E');

     SELECT * FROM :lt_status_texts;
END;
