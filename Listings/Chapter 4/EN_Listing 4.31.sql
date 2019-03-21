-- Listing 4.31.sql
-- Example for a filter on the last four completed weeks

CREATE TABLE dats_table(calday varchar(8));
-- The date values must be adjusted accordingly:
INSERT INTO dats_table VALUES (TO_DATS('10.04.2019'));
INSERT INTO dats_table VALUES (TO_DATS('11.04.2019'));
INSERT INTO dats_table VALUES (TO_DATS('13.05.2019'));
INSERT INTO dats_table VALUES (TO_DATS('14.05.2019'));
SELECT *
FROM dats_table
WHERE calday <= TO_DATS(ADD_DAYS(CURRENT_DATE, UMINUS(
            WEEKDAY(CURRENT_DATE) + 1)))
   AND calday >= TO_DATS(ADD_DAYS(CURRENT_DATE, UMINUS(
            WEEKDAY(CURRENT_DATE) + 28)));
DROP TABLE dats_table;
