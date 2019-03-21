-- Listing 3.50.sql
-- Example for the usage of the MAP_MERGE operator
  
--Creation of a table with tree time intervals:
CREATE TABLE intervals (id INT, from_date date,to_date date);
INSERT INTO intervals VALUES(1, '2017-01-01', '2017-01-05');
INSERT INTO intervals VALUES(2, '2017-05-01', '2017-05-05');
INSERT INTO intervals VALUES(3, '2017-05-08', '2017-05-09');

-- Creation of a function, that returns all dates within a 
-- time interval:
CREATE FUNCTION udf_days(iv_id INT, 
                         iv_from_date date, 
						 iv_to_date date)
RETURNS TABLE (id INT, datum date)
AS BEGIN
 RETURN SELECT :iv_id AS id,
               GENERATED_PERIOD_START AS datum 
        FROM SERIES_GENERATE_DATE( 
					  INCREMENT_BY => 'INTERVAL 1 DAY',
					  MIN_VALUE => :iv_from_date,
					  MAX_VALUE => ADD_DAYS(:iv_to_date,1));
END;

--Execution of MAP_MERGE in an anonymous block:
DO BEGIN
   lt_d = SELECT * FROM intervals;
   lt_datum = MAP_MERGE( :lt_d, udf_days(:lt_d.id, 
                                         :lt_d.from_date, 
                                         :lt_d.to_date) );
   SELECT * FROM :lt_datum;
END;
--Clean up of the created objects
DROP TABLE intervals;
DROP FUNCTION udf_days;
