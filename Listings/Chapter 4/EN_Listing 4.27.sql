-- Listing 4.27.sql
-- Diferences between the SQL-functions ADD_MONTHS() and ADD_MONTHS_LAST()

SELECT  ADD_MONTHS_LAST('2017-02-28', 1) FROM DUMMY;
                          --> 31.03.2017
SELECT  ADD_MONTHS('2017-02-28', 1) FROM DUMMY;
                          --> 28.03.2017
