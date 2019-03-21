-- Listing 8.13.abap
-- Generated UDF function for the AMDP function

create function
  "ZJB_CL_COUNTRY=>GET_COUNTRY_TEXT"
(
   "MANDT" NVARCHAR (000003),
   "SY_LANGU" NVARCHAR (000001)
)
returns table
(
  "MANDT" NVARCHAR (000003) ,
  "COUNTRY" NVARCHAR (000003) ,
  "TEXT" NVARCHAR (000050)
)
language sqlscript  sql security invoker  as begin

    RETURN SELECT mandt,
                  land1 AS country,
                  landx50 AS text
                  FROM "ZJB_CL_COUNTRY=>T005T#covw"
                  WHERE spras = :SY_LANGU
                    AND mandt = :MANDT;

end;
