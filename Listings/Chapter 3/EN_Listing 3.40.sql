-- Listing 3.40.sql
-- Example of a CASE-Expression in the GROUP BY-clause

SELECT CASE 
         WHEN due_date < to_date('2017-12-01')
            AND status NOT IN ( 5, 6 )
            THEN 'to check'
         ELSE 'OK'
      END AS "Check?",
   count(*) AS cnt
FROM tasks
GROUP BY CASE 
            WHEN due_date < to_date('2017-12-01')
               AND status NOT IN ( 5, 6 )
               THEN 'to check'
            ELSE 'OK'
         END;
