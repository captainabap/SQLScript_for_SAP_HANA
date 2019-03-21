-- Listing 10.2.sql
-- Same query with outsourced coding

SELECT id,
       udf_name_formatting(firstname, lastname) AS name,
       udf_symbol_for_gender(sex) AS mw,
       (SELECT text FROM udf_team_text() WHERE id = team) 
                                                AS team
FROM users ;
