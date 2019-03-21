-- Listing 11.4.sql
-- Simple SQL query for performance analysis

SELECT a.id AS task, 
       a.title,
       b.firstname,
       b.lastname,
       b.email,
       t.team_text 
  FROM tasks AS a
  LEFT OUTER JOIN users AS b
  ON a.assignee = b.id
  LEFT OUTER JOIN team_text AS t
  ON b.team = t.id;
