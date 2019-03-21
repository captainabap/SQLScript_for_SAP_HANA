-- Listing 2.24.sql
-- Procedure call using the parameterposition

DO BEGIN
   statustexts('EN',lt_status_texts) ; 
   SELECT * FROM :lt_status_texts;
END; 
