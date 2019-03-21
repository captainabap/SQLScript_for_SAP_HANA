-- Listing 10.3.sql
-- The three functions used in Listing 10.2

CREATE FUNCTION udf_name_formatting(
   iv_firstname NVARCHAR(20),
   iv_lastname NVARCHAR(20)
)
RETURNS rv_name NVARCHAR(42)
AS BEGIN 
   rv_name = iv_lastname || ', ' || iv_firstname;
END;

CREATE FUNCTION udf_symbol_for_gender(
   iv_sex NVARCHAR(1)
)
RETURNS rv_symbol NVARCHAR(1)
AS BEGIN
   rv_symbol = CASE WHEN iv_sex = 'F'
                       THEN NCHAR('9792')
                    WHEN iv_sex = 'M'
                       THEN NCHAR('9794')
                    ELSE '' END;
END;

CREATE FUNCTION udf_team_text( )
RETURNS TABLE(id INT, text NVARCHAR(20))
AS BEGIN
   lt_team_id = SELECT DISTINCT id FROM TEAM_TEXT;
   
   RETURN 
         SELECT input.id,
                COALESCE(de.team_text,
                         en.team_text,
                         '') AS text
         FROM  :lt_team_id AS input
               LEFT OUTER JOIN team_text as de
               ON de.id = input.id
               AND de.langu = 'DE'
               LEFT OUTER JOIN team_text as en
               ON en.id = input.id
               AND en.langu = 'EN';
END;
