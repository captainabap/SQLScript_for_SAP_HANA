-- Listing 6.8.sql
-- Index-based access with scalar expressions as an index

DO (OUT ot_result TABLE(text NVARCHAR(100))=>?) 
BEGIN 
   DECLARE indx integer;

   lt_tasks = SELECT TOP 10 * 
                 FROM tasks;
   lt_status = SELECT * 
                 FROM status_text 
                 WHERE langu = 'EN' 
                 ORDER BY id ASC;

   FOR indx IN 1..10 DO
      ot_result.text[:indx] = 
         :lt_status.status_text[:lt_tasks.status[:indx]] 
         || ' - ' 
         || :lt_tasks.title[:indx];
   END FOR;
END;
