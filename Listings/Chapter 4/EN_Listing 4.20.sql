-- Listing 4.20.sql
-- Conversion of characters to ASCII or Unicode and vice versa

SELECT ascii('A')     AS char2ascii   ,
       char(65)       AS asci2char    ,
       unicode('碼')  AS nchar2unicode,
       nchar('30908') AS unicode2nchar
   FROM dummy;
