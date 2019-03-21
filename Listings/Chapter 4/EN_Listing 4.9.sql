-- Listing 4.9.sql
-- Simple string decomposition with regular expressions

CREATE TABLE companies( name NVARCHAR(30) ) ;
INSERT INTO companies VALUES('Broadcom Ltd.') ;
INSERT INTO companies VALUES('SAP SE') ;
INSERT INTO companies VALUES('Shire PLC') ;
INSERT INTO companies VALUES('Siemens AG') ;
SELECT SUBSTR_REGEXPR('PLC|Ltd.|SE|AG' IN name) AS legalform,
       name
   FROM companies;
DROP TABLE companies;
