-- Listing 4.19.sql
-- Searching with regular expressions

SELECT *
   FROM users
   WHERE lastname LIKE_REGEXPR 'M(a|e)(i|y)(a|er)';
