-- Listing 3.28.sql
-- Example of the position of conditions
  
SELECT * FROM records 
   LEFT OUTER JOIN currencies 
   ON   records.currency = currencies.currency
   where currencies.currency <> 'EUR'; 

SELECT * FROM records 
   LEFT OUTER JOIN currencies 
   ON   records.currency = currencies.currency
   and  currencies.currency <> 'EUR';   
