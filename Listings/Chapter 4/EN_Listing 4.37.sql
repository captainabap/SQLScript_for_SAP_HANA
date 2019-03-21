-- Listing 4.37.sql
-- Example of a simple currency translation

CREATE TABLE amounts(
         amount   DEC(17,2),
         currency VARCHAR(3) ) ;

INSERT INTO amounts VALUES(89.90,'EUR') ;
INSERT INTO amounts VALUES(17.20,'USD') ;
INSERT INTO amounts VALUES(4.54,'GBP') ;

SELECT
      amount                       AS "Amount",
      currency                     AS "Currency",
      CONVERT_CURRENCY( AMOUNT             => amount,
                        SOURCE_UNIT        => currency,
                        SCHEMA             => 'JBRANDEIS',
                        TARGET_UNIT        => 'USD',
                        REFERENCE_DATE     => '2013-09-23',
                        CLIENT             => '000')
                                   AS "Amount in USD",
      'USD'                        AS "USD"
   FROM amounts;

DROP TABLE amounts;
