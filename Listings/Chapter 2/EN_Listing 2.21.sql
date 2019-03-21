-- Listing 2.21.sql
-- Internal procedure call with schema specificatio
DO BEGIN
   CALL jbrandeis.status_texts(iv_langu=>'EN',
                               et_result=> lt_status_texts) ;
END;
