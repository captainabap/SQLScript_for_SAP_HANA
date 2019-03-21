-- Listing 9.4.sql
-- Protection against NULL values with COALESCE

outtab = SELECT ...
                COALESCE( pplant.plantcat, ' ' ) AS plantcat,
                it.record ,
                it.sql__procedure__source__record
                FROM :intab as it
                LEFT OUTER JOIN "/BI0/PPLANT" AS pplant
                ON it.plant = pplant.plant
