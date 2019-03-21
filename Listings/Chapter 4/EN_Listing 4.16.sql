-- Listing 4.16.sql
-- Example of the TRIM Functions

SELECT
      TRIM(both 'HIA' FROM 'ABCDEFGHI')     AS trim_both    ,
      TRIM(leading 'HIA' FROM 'ABCDEFGHI')  AS trim_leading ,
      TRIM(trailing 'HIA' FROM 'ABCDEFGHI') AS trim_trailing,
      LTRIM('ABCDEFGHI','HIA')              AS "LTRIM()"    ,
      RTRIM('ABCDEFGHI','HIA')              AS "RTRIM()"
   FROM dummy;
