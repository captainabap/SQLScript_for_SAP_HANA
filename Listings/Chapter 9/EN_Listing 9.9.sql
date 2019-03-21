-- Listing 9.9.sql
-- Check for control characters
outtab   = SELECT * FROM :intab;
errortab = SELECT 'Check field content!'  AS ERROR_TEXT,
                  SQL__PROCEDURE__SOURCE__RECORD
             FROM :intab
             WHERE text LIKE_REGEXPR '.*[[cntrl]].*'
                OR text LIKE '!%'
                OR text = '#';
