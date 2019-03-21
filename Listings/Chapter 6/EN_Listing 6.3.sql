-- Listing 6.3.sql
-- Example for assigning values to local scalar variables 

CREATE FUNCTION udf_statistic 
RETURNS rv_projects INT, 
        rv_assignee INT AS 
BEGIN
   --Assigning variables using a SELECT INTO statement
   SELECT
      COUNT( DISTINCT project),
      COUNT( DISTINCT assignee) 
      INTO rv_projects,
           rv_assignee 
   FROM
      tasks;
END;

DO BEGIN
   DECLARE lv_projects INTEGER;
   DECLARE lv_assignee INTEGER;
   DECLARE lv_div DEC;
   
-- Assignment of multiple variables by scalar UDF
   (lv_projects, lv_assignee) = udf_statistic( );

-- Assignment by an expression
   lv_div = :lv_assignee / :lv_projects;
   
   SELECT
      lv_projects AS projects,
      lv_assignee AS assignee,
      lv_div AS assignee_pro_project 
   FROM
      dummy;
   END ;
DROP FUNCTION udf_statistic;
