-- Listing 4.3.sql
-- The length of character strings

SELECT length('')               AS length_space,
       length('Peter')          AS length_peter,
       length('Jörg')           AS length_joerg,
       length('碼')             AS length_china,
       length(to_varchar('碼')) AS lenght_china_vc
FROM   dummy;
