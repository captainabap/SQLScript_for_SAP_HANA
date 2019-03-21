-- Listing 4.14.sql
-- Example of searching and replacing with regular expressions

CREATE TABLE employees (namen NVARCHAR(60));

INSERT INTO employees VALUES ('Joerg Brandeis');
INSERT INTO employees VALUES ('Peter Mueller');
INSERT INTO employees VALUES ('Michael Maier');
INSERT INTO employees VALUES ('Superman');

SELECT REPLACE_REGEXPR(
      '([[:graph:]]+)[[:blank:]]+([[:graph:]]+)' IN namen
      WITH 'Lastname: \2 Firstname: \1')
FROM employees;

DROP TABLE employees;
