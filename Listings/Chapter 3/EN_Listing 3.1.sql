-- Listing 3.1.sql
-- Implicite typing of a table variable

DO BEGIN
--Derivation of the table type from a table parameter 
   CALL statustexts(iv_langu => 'DE', 
                    et_result => lt_statustext);

					
--Derivation of the table type from the return structure of 
--the SELECT query   
   lt_status = SELECT * FROM status;

   SELECT * FROM :lt_statustext;
   SELECT * FROM :lt_status;
END;
