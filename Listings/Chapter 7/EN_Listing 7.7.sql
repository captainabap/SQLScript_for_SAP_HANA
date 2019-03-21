-- Listing 7.7.sql
-- Example for changing table properties

CREATE ROW TABLE demo_table(
    col1 INT,
    col2 INT
);

--Adding a column
ALTER TABLE demo_table ADD (col3 VARCHAR(20));

--Change column properties, e.g. set default value:
ALTER TABLE demo_table ALTER (col1 INT DEFAULT 42);

--Add the primary key definition:
ALTER TABLE demo_table 
            ADD CONSTRAINT pk PRIMARY KEY (col1, col2);

--changing the type:
ALTER TABLE demo_table COLUMN;

