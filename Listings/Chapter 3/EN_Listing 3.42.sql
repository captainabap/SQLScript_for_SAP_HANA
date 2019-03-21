-- Listing 3.42.sql
-- Usage of GROUPING SETS to form totals rows 
 
DO BEGIN
   lt_aggregation = SELECT assignee,
                           status,
                           count(*) AS cnt
                    FROM tasks
                    GROUP BY GROUPING SETS(
                               ( status, assignee ),          
                               ( assignee ) )
                    ORDER BY assignee,
                                status NULLS LAST;

   SELECT b.firstname || ' ' || b.lastname AS assignee,
          coalesce(s.status_text, '     Summe') AS status,
          aggr.cnt
   FROM :lt_aggregation AS aggr
   LEFT JOIN users AS b    --Reading the user data
      ON aggr.assignee = b.id
   LEFT JOIN status_text AS s --Reading the status texts
      ON aggr.status = s.id
         AND s.langu = 'DE';
END;
