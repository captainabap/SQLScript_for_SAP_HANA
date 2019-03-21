-- Listing 3.36.sql
-- Check for NULL

--1. check with the NULL predicate
SELECT *
FROM users
WHERE firstname IS NULL;

--2. Attention! This query returns a different result!
SELECT *
FROM users
WHERE firstname = NULL; --Wrong! Do not use!
