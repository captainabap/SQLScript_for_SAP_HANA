-- Listing 3.19.sql
-- Scalar subquery for the determination of a field
  
SELECT
      schema_name,
      (SELECT
            COUNT(*)
         FROM tables
         WHERE schema_name=schemas.schema_name) 
         AS table_count,
      (SELECT
            COUNT(*)
         FROM procedures
         WHERE schema_name=schemas.schema_name) 
         AS procedure_count,
       schema_owner
   FROM schemas;
