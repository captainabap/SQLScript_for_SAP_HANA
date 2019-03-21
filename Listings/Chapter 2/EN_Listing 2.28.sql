-- Listing 2.28.sql
-- Example of a table UDF

CREATE FUNCTION udf_status_texts (iv_langu VARCHAR(2))
RETURNS TABLE ( id INT,
                status_text VARCHAR(20) )
AS BEGIN
   RETURN SELECT id,
                 status_text
          FROM status_text
          WHERE langu = :iv_langu;
END;
