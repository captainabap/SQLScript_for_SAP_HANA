-- Listing 7.3.sql
-- Example of multiple UNIQUE restrictions on multiple columns

CREATE TABLE test_unique (a INT, 
                          b INT,
                          c INT,
                          UNIQUE(a, b),
                          UNIQUE(b, c));
