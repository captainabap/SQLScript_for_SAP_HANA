-- Listing 9.6.sql
-- Simple expert routine

  METHOD procedure BY DATABASE PROCEDURE
                   FOR HDB LANGUAGE SQLSCRIPT
                   OPTIONS READ-ONLY
                   USING /bi0/pmat_plant.

    outtab   = select it.soursystem ,
                      it.plant ,
                      mat_plant.mat_plant ,
                      mat_plant.recordmode ,
                      mat_plant.abckey ,

...

                      mat_plant.price_unit ,
                      mat_plant.proctime ,
                      mat_plant.prodsched ,
                      mat_plant.profit_ctr ,
                      mat_plant.stge_pd_un ,
                      it.record ,
                      it.sql__procedure__source__record
    FROM :intab AS it
    INNER JOIN "/BI0/PMAT_PLANT" AS mat_plant
    ON it.soursystem = mat_plant.soursystem
    AND it.plant     = mat_plant.plant;

    errortab = SELECT * FROM :errortab;
  ENDMETHOD.
