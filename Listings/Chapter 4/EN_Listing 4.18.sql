-- Listing 4.18.sql
-- Example for the SQL-Function HAMMING_DISTANCE()

SELECT *
   FROM users
   WHERE HAMMING_DISTANCE(firstname, 'Mandy') BETWEEN 0 and 1;
