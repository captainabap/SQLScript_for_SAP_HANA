-- Listing 3.37.sql
-- fuzzy search with the CONTAINS-predicate
 
--1. fuzzy search for a character string
SELECT *
FROM users
WHERE CONTAINS ( ( firstname, lastname,  email ),
                 'andy',
                 FUZZY(0.3) );

--2. fuzzy search for multiple strings
SELECT *
FROM users
WHERE CONTAINS ( *,
                 'andy OR anette',
                 FUZZY(0.5)  );
