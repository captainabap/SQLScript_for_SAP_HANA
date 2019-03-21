-- Listing 4.26.sql
-- Conversion from TIME to string

CREATE TABLE tab_format ( format      VARCHAR(10),
                          description nvarchar(40) ) ;

INSERT INTO tab_format VALUES('HH24',
         '24 hours format') ;
INSERT INTO tab_format VALUES('HH',
         '12 hours format') ;
INSERT INTO tab_format VALUES('HH12',
         '12 hours format') ;
INSERT INTO tab_format VALUES('AM',
         'AM or PM') ;
INSERT INTO tab_format VALUES('PM',
         'AM or PM') ;
INSERT INTO tab_format VALUES('MI',
         'Minutes') ;
INSERT INTO tab_format VALUES('SS',
         'Seconds') ;
INSERT INTO tab_format VALUES('SSSSS',
         'Seconds since midnight') ;
SELECT
      format,
      to_varchar( to_time( '09:50:13'),
                 format )  AS "Example 09:50:13",
      to_varchar( to_time( '13:07:38'),
                 format )  AS "Example 13:07:38",
      description
   FROM  tab_format ;
DROP TABLE tab_format ;
