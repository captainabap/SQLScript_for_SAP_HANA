-- Listing 3.27.sql
-- Example of an inner join
 
CREATE TABLE records ( recordnr  INT PRIMARY KEY,
                      amount   DEC(17,2),
                      currency VARCHAR(3) ) ;

CREATE TABLE currencies ( currency VARCHAR(3) PRIMARY KEY,
                          text     nvarchar(20)  ) ;

INSERT INTO records VALUES(1,34.34,'EUR') ;
INSERT INTO records VALUES(2,12.53,'EUR') ;
INSERT INTO records VALUES(3,234.12,'ALL');
INSERT INTO records VALUES(4,45.12,'USD') ;

INSERT INTO currencies VALUES('EUR','Europäischer Euro') ;
INSERT INTO currencies VALUES('USD','US-Dollar') ;
INSERT INTO currencies VALUES('GBP','Britisches Pfund') ;

SELECT *
   FROM records
      INNER JOIN currencies 
      ON records.currency = currencies.currency;

DROP TABLE records;
DROP TABLE currencies;
