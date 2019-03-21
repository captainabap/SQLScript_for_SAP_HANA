-- Listing 4.6.sql
-- Decomposition of character strings with position information

SELECT LEFT('ABCDEFGHI',3)         AS left_part, -->'ABC'
       SUBSTRING('ABCDEFGHI',4,3)  AS middle_part, -->'DEF'
       RIGHT('ABCDEFGHI',3)        AS right_part -->'GHI'
   FROM
      DUMMY;
