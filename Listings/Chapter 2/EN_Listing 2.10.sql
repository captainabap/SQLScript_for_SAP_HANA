-- Listing 2.10.sql
-- Table DUMMY for Testing Expressions

SELECT TO_DATS('2016-01-01') FROM DUMMY;

-- The same test with an anonymous block
DO (OUT rv_result NVARCHAR(10) =>?)
BEGIN
   rv_result = TO_DATS('2016-12-31');
END;
