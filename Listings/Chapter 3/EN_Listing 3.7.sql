-- Listing 3.7.sql
-- Operator expressions in the field list of the SELECT-statement 
 
SELECT id || ' - ' || title AS Aufgabe,
   planed_effort,
   effort,
   round(effort / planed_effort * 100, 0) 
                  || ' %' AS used_time,
   completed || ' %' AS completed
FROM tasks;      
