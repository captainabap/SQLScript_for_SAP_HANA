-- Listing 6.7.sql
-- Index-based access to table variables 
 
DO (OUT ot_result TABLE( id INT,
                         title NVARCHAR(50))=>?)
BEGIN
   ot_result = SELECT top 10  id, title FROM tasks;
   ot_result.title[1] = 'Title: ' || :ot_result.title[1];
END;
