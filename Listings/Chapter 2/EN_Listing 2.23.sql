-- Listing 2.23.sql
-- Declaration and initialization of a new table variable when calling a procedur
DO BEGIN
   statustexts(iv_langu=>'EN',
                et_result=>lt_status_texts) ;
   SELECT * FROM :lt_status_texts;
END;
