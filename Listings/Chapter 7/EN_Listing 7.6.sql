-- Listing 7.6.sql
-- Creating a new table based on an SQL query
 
CREATE TABLE tmp_tasks AS (    
    SELECT a.id, 
           b.firstname, 
           b.lastname, 
           t.team_text
           FROM tasks AS a
           LEFT OUTER JOIN users AS b
           ON a.assignee = b.id
           LEFT OUTER JOIN team_text AS t
           ON b.team = t.id 
           ) 
           WITH DATA;
