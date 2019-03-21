-- Listing 10.1.sql
-- Example of complexity in simple queries
 
SELECT id,
   -- format name
   lastname || ', ' || firstname AS name,
   -- Symbol for gender
   CASE 
      WHEN sex = 'F'
         THEN NCHAR('9792')
      WHEN sex = 'M'
         THEN NCHAR('9794')
      ELSE ''
      END AS MW,
   -- add text for the team
   COALESCE((
         SELECT team_text
         FROM team_text
         WHERE ID = team
            AND langu = 'DE'
         ), (
         SELECT team_text
         FROM team_text
         WHERE ID = team
            AND langu = 'EN'
         ), '') AS team
FROM users;
