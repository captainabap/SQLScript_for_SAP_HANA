-- Listing 4.32.sql
-- Transferring the date calculation to a function

SELECT *
FROM dats
WHERE calday <= TO_DATS(UDF_ADD_DAYS_TO_LAST_SUNDAY(0))
  AND calday >= TO_DATS(UDF_ADD_DAYS_TO_LAST_SUNDAY(27));
