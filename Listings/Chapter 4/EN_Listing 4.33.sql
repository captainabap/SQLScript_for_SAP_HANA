-- Listing 4.33.sql
-- Comparison of decimal and binary floating point numbers

SELECT TO_DOUBLE(1.2)-TO_DOUBLE(0.1) FROM DUMMY;
SELECT TO_SMALLDECIMAL(1.2)-TO_SMALLDECIMAL(0.1) FROM DUMMY;
