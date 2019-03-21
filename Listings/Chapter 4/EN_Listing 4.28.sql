-- Listing 4.28.sql
-- Splitting a date or a time into its components

SELECT
      1                        AS row,
      YEAR(CURRENT_DATE)       AS "Year",
      MONTH(CURRENT_DATE)      AS "Month",
      DAYOFMONTH(CURRENT_DATE) AS "Day",
      HOUR(CURRENT_TIME)       AS "Hour",
      MINUTE(CURRENT_TIME)     AS "Minute",
      SECOND(CURRENT_TIME)     AS "Second"
   FROM DUMMY
UNION ALL
SELECT
      2                                 AS row,
      EXTRACT(YEAR FROM CURRENT_DATE)   AS "Year",
      EXTRACT(MONTH FROM CURRENT_DATE)  AS "Month",
      EXTRACT(DAY FROM CURRENT_DATE)    AS "Day",
      EXTRACT(hour FROM CURRENT_TIME)   AS "Hour",
      EXTRACT(minute FROM CURRENT_TIME) AS "Minute",
      EXTRACT(second FROM CURRENT_TIME) AS "Second"
   FROM dummy;
