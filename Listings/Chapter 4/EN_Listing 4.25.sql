-- Listing 4.25.sql
-- Error when calculating with DATS fields

CREATE TABLE abap_dats(datum VARCHAR(8));
INSERT INTO abap_dats VALUES ('20180601');
INSERT INTO abap_dats VALUES ('20180618');
INSERT INTO abap_dats VALUES ('20180101');
INSERT INTO abap_dats VALUES ('20170601');

SELECT datum AS dats,
       TO_DATE(datum) AS date,
       datum - '20180601' as delta
       FROM abap_dats;

DROP TABLE abap_dats;
