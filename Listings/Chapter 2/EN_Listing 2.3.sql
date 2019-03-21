-- Listing 2.3.sql
-- Example for literals in the sourcecode

SELECT 'Jörg'                         AS string,
       N'Jörg'                        AS unicode, 
       x'fff'                         AS binary,
       -10                            AS integer,
       - 1.2345                       AS decimal,
       - 17.126E30                    AS float,
       0xff                           AS hex,
       '2010-01-01'                   AS date_as_string,
       DATE'2017-11-10'               AS date,
       '15:42:04.123'                 AS time_as_string,
       TIME'15:42:04.123'             AS time,
       '2011-12-31 23:59:59'          AS timestamp_string,
       TIMESTAMP'2011-12-31 23:59:59' AS timestamp
FROM   dummy;
