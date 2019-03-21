-- Listing 7.4.sql
-- Example of a composite primary key

CREATE TABLE test_composite_key (a INT, 
                                 b INT,
                                 c INT,
                                 PRIMARY KEY(a, b));
