-- Listing 9.3.sql
-- USING-clause in AMDP-routines

  METHOD procedure BY DATABASE PROCEDURE
                   FOR HDB
                   LANGUAGE SQLSCRIPT
                   OPTIONS READ-ONLY
                   USING /bic/AZJB_TEST2.

    OUTTAB   = SELECT 
    ...  
    FROM :INTAB AS T1
    LEFT OUTER JOIN "/BIC/AZJB_TEST2" AS T2
    ON 
    ... ;
    ERRORTAB = SELECT * FROM :ERRORTAB;
  ENDMETHOD.
