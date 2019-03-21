-- Listing 3.41.sql
-- Separation of CASE and GROUP BY

DO BEGIN
--1. New column with the CASE-expression
   lt_select = SELECT CASE 
                     WHEN due_date < to_date('2017-12-01')
                        AND status NOT IN ( 5, 6 )
                        THEN 'to check'
                     ELSE 'OK'
                     END AS "Check?"
               FROM tasks;
--2. Grouping by the new column
   SELECT "Check?",
          count(*) as cnt
   FROM :lt_select
   GROUP BY "Check?";
END;
