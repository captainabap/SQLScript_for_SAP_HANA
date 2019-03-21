-- Listing 5.1.sql
-- Tables for the examples in this chapter

CREATE TABLE table_1(
   key1 INT DEFAULT 5,
   key2 INT,
   value1 NVARCHAR(200),
   PRIMARY KEY (
      key1,
      key2   )
);
CREATE TABLE table_2(
   key1 INT PRIMARY KEY,
   value1 NVARCHAR(200),
   value2 NVARCHAR(200)
);
