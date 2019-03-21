-- Listing 3.17.sql
-- Concatination of the team name with the aggregate expression STRING_AGG
  
SELECT langu,
   string_agg(team_text, ', ')
FROM team_text
GROUP BY langu; 
