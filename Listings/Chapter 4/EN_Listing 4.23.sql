-- Listing 4.23.sql
-- Various date formats

CREATE TABLE dates ( datum DATE ) ;

INSERT INTO dates VALUES('1.12.2017') ;
INSERT INTO dates VALUES('2017.12.01') ;
INSERT INTO dates VALUES('20171201') ;
INSERT INTO dates VALUES('2017/12/1') ;

SELECT * FROM dates;

DROP TABLE dates;
