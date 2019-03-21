-- Listing 2.37.sql
-- Derivation of price class and messages

CREATE PROCEDURE pr_price_class (
   iv_size_category INT,
   iv_weight INT,
   iv_belt_dimension INT,
   iv_is_small_parcel VARCHAR(1),
   OUT ov_price_class VARCHAR(3),
   OUT ov_message NVARCHAR(30)
   ) READS SQL DATA
AS
BEGIN
   SELECT CASE 
         WHEN iv_belt_dimension > 300
            THEN 'PT4'
         WHEN iv_size_category <= 1
            AND iv_weight <= 1000
            AND iv_is_small_parcel = 'X'
            THEN 'PN1'
         WHEN iv_size_category <= 2
            AND iv_weight <= 2000
            AND iv_is_small_parcel = 'X'
            THEN 'PN2'
         WHEN iv_size_category <= 2
            AND iv_weight <= 2000
            THEN 'PT1'
         WHEN iv_size_category <= 3
            AND iv_weight <= 5000
            THEN 'PT2'
         WHEN iv_size_category <= 3
            AND iv_weight <= 10000
            THEN 'PT3'
         WHEN iv_size_category <= 3
            AND iv_weight <= 31500
            THEN 'PT4'
         ELSE 'NA'
         END
   INTO ov_price_class
   FROM DUMMY;

   SELECT CASE 
         WHEN iv_size_category = 4
            THEN 'Dimensions to large'
         WHEN iv_weight > 31500
            THEN 'weight to high'
         WHEN iv_is_small_Parcel = 'X'
            AND :ov_price_class IN ('PT1','PT2','PT3','PT4')
            THEN 'Not as small parcel!'
         ELSE ''
         END
   INTO ov_message
   FROM DUMMY;
   
   IF ov_message <> ''
      THEN 
         ov_price_class = 'NA';
   END IF;
END;
