-- Listing 4.30.sql
-- Calculation of the machine running time in hours

CREATE TABLE runtimes(from_date VARCHAR(8),
					  from_time VARCHAR(6),
					  to_date   VARCHAR(8),
					  to_time  VARCHAR(6));
INSERT INTO runtimes VALUES ( '20180101', '060000',
                              '20180101', '065900' );
INSERT INTO runtimes VALUES ( '20180101', '060000',
                              '20180101', '140000' );
INSERT INTO runtimes VALUES ( '20180101', '060000',
                              '20180103', '050000' );
INSERT INTO runtimes VALUES ( '20180101', '060000',
                              '20180201', '060000' );

SELECT FLOOR(
             SECONDS_BETWEEN(
                        TO_SECONDDATE(
                                 TO_DATE(from_date)
                                 ||' '||
                                 TO_TIME(from_time)),
                        TO_SECONDDATE(
                                 TO_DATE(to_date)
                                 ||' '||
                                 TO_TIME(to_time)))
             / 60 /*seconds to minutes*/
             / 60 /*minutes to hours*/)

       AS runtime_in_hours
       FROM runtimes;

DROP TABLE runtimes;
