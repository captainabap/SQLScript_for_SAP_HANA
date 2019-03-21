-- Listing 9.7.sql
-- Simple error determination from the INTAB input data
 
errortab = SELECT 'Currency is empty!' AS ERROR_TEXT, 
                  SQL__PROCEDURE__SOURCE__RECORD
                  FROM :intab 
                  WHERE currency = ' '
                    AND amount <> 0;
