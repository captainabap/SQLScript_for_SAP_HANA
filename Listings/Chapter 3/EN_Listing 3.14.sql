-- Listing 3.14.sql
-- Example of the usage of constant values and aggregate expressions
 
DO BEGIN
--Constant 1 as a value for COUNTER
   lt_tmp = SELECT 1 AS counter,      
               planed_effort - effort AS remaining_effort
            FROM tasks
   WHERE status NOT IN (5, 6 );

--Aggregation on the column COUNTER
   SELECT sum(counter),
      sum(remaining_effort)
   FROM :lt_tmp;
END;
