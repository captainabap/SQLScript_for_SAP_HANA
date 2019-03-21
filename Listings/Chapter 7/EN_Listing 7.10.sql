-- Listing 7.10.sql
-- Definition of parameterized views
 
CREATE VIEW invoices (IN iv_currency VARCHAR(5))
   AS SELECT invoice_nr,
             SUM(amount*quantity) as amount,
             currency 
      FROM invoice_position
      WHERE currency = :iv_currency
      GROUP BY invoice_nr,
               currency;
