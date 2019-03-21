-- Listing 6.9.sql
-- Access to non-existing rows

DO (OUT ot_result TABLE( id INT,
                         title NVARCHAR(50))=>?)
BEGIN
   ot_result = SELECT TOP 10  id, title FROM tasks;

   ot_result.title[30]  =  :ot_result.title[1];
   ot_result.title[1]   =  :ot_result.title[31];
END;
