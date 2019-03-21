-- Listing 3.18.sql
-- Enhancement of the example by the number of users

SELECT STRING_AGG(team_text.team_text || '(' 
                                      || cnt 
                                      || ')', ', ')
FROM (
   SELECT team,
      count(*) AS cnt
   FROM users
   GROUP BY team
   ) AS b
INNER JOIN team_text
   ON team_text.id = b.team
WHERE langu = 'DE';
