-- Listing 7.14.sql
-- Parameterization for line-by-line processing

CREATE TRIGGER rp_insert AFTER INSERT 
       ON invoice_position
       REFERENCING NEW ROW ls_new 
       FOR EACH ROW
...
