-- Listing 8.10.abap
-- Example for the implementation of a CDS table function 

CLASS zjb_cl_country DEFINITION PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.
    CLASS-METHODS get_country_text
                  FOR TABLE FUNCTION z_country_text.
ENDCLASS.

CLASS zjb_cl_country IMPLEMENTATION.
  METHOD get_country_text BY DATABASE FUNCTION
                          FOR HDB LANGUAGE SQLSCRIPT
                          OPTIONS READ-ONLY
                          USING t005t.
    RETURN SELECT mandt,
                  land1 AS country,
                  landx50 AS text
                  FROM t005t
                  WHERE spras = :sy_langu
                    AND mandt = :mandt;
  ENDMETHOD.
ENDCLASS.
