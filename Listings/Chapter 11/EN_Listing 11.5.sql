-- Listing 11.5.sql
-- Example for using the EXPLAIN PLAN statement

EXPLAIN PLAN FOR
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

SELECT * FROM explain_plan_table;
DELETE FROM explain_plan_table;
