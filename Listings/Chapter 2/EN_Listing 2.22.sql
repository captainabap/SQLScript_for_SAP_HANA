-- Listing 2.22.sql
-- Internal procedure call without the keyword CALL

DO BEGIN
   statustexts(iv_langu=>'DE',
                et_result=> lt_status_texts) ;
END;
