-- Listing 9.1.sql
-- Assignment of a sequential number for the RECORD field for sorting

outtab = SELECT ...          
       LPAD( RANK() OVER (ORDER BY <Sorting>), 56, '0') 
                                               AS "RECORD",
       SQL__PROCEDURE__SOURCE__RECORD
       FROM :intab ;
