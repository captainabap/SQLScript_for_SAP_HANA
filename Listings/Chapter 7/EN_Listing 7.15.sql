-- Listing 7.15.sql
-- Parameterization for processing per statement with table parameters

CREATE TRIGGER rp_insert AFTER INSERT 
       ON invoice_position
       REFERENCING NEW TABLE AS lt_new 
       FOR EACH STATEMENT
...
