-- Listing 4.24.sql
-- Example for formatting date fields

CREATE TABLE tab_format ( format      VARCHAR(10),
                          description nvarchar(40) ) ;

INSERT INTO tab_format VALUES('YY',
         'Year 2 digits') ;
INSERT INTO tab_format VALUES('YYYY',
         'Year 4 digits') ;
INSERT INTO tab_format VALUES('MM',
         'Month, 2 digits') ;
INSERT INTO tab_format VALUES('DD',
         'Day of the month') ;
INSERT INTO tab_format VALUES('Q',
         'Quarter') ;
INSERT INTO tab_format VALUES('WW',
         'Calendar week') ;
INSERT INTO tab_format VALUES('RM',
         'Month in roman spelling') ;
INSERT INTO tab_format VALUES('MON',
         '3-digit abbreviation of the month') ;
INSERT INTO tab_format VALUES('MONTH',
         'Name of the month (english)') ;
INSERT INTO tab_format VALUES('DDD',
         'Day of the year') ;
INSERT INTO tab_format VALUES('YYYY=MM=DD',
         'Example for an individual pattern') ;
SELECT
      format,
      to_varchar( to_dats( '27.12.2018'),
                  format )  AS "Example",
      description
   FROM  tab_format ;
DROP TABLE tab_format ;
