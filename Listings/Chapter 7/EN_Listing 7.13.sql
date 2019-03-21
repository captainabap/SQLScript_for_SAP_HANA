-- Listing 7.13.sql
-- Assignment of OLD and NEW to local variables
 
CREATE TRIGGER rp_update AFTER UPDATE 
       ON invoice_position
       REFERENCING NEW ROW ls_new 
                   OLD ROW ls_old
       FOR EACH ROW
...
