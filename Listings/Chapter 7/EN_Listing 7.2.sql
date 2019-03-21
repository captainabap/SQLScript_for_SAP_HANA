-- Listing 7.2.sql
-- Example of restrictions on individual columns

CREATE TABLE status (id INT PRIMARY KEY, 
                     sort_nr INT NOT NULL UNIQUE,
                     text NVARCHAR(30) );
