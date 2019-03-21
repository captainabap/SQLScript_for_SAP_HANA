-- Listing 2.12.sql
-- SELECT-Query with UDF

SELECT a.id,
       udf_username(a.assignee),
       a.title,
       s.status_text
FROM udf_tasks_in_status(4) AS a
LEFT OUTER JOIN udf_status_texts('DE') AS s
   ON a.status = s.id;