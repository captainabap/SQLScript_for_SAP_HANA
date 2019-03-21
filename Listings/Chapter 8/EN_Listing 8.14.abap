-- Listing 8.14.abap
-- Example for the use of an AMDP function in another AMDP method
 
CLASS zcl_amdp_func DEFINITION PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_s_country,
             mandt   TYPE mandt,
             country TYPE land1,
             text    TYPE landx50,
           END OF ty_s_country.
    TYPES ty_t_country TYPE STANDARD TABLE OF ty_s_country
                       WITH DEFAULT KEY.

    INTERFACES if_amdp_marker_hdb.
    METHODS test_amdp_table_function
      IMPORTING VALUE(iv_langu)   TYPE langu
                VALUE(iv_mandt)   TYPE mandt
      EXPORTING VALUE(et_country) TYPE ty_t_country.

  PRIVATE SECTION.
    METHODS get_country_text
      IMPORTING VALUE(iv_langu)   TYPE langu
                VALUE(iv_mandt)   TYPE mandt
      RETURNING VALUE(rt_country) TYPE ty_t_country.
ENDCLASS.

CLASS zcl_amdp_func IMPLEMENTATION.

  METHOD test_amdp_table_function BY DATABASE PROCEDURE
                      FOR HDB LANGUAGE SQLSCRIPT
                      OPTIONS READ-ONLY
                      USING zcl_amdp_func=>get_country_text.
    et_country = select *
                     from "ZCL_AMDP_FUNC=>GET_COUNTRY_TEXT"
                     ( iv_langu => :iv_langu,
                       iv_mandt => :iv_mandt);
  ENDMETHOD.

  METHOD get_country_text BY DATABASE FUNCTION
                          FOR HDB LANGUAGE SQLSCRIPT
                          OPTIONS READ-ONLY
                          USING t005t.
    RETURN SELECT mandt,
                  land1 AS country,
                  landx50 AS text
                  FROM t005t
                  WHERE spras = :iv_langu
                    AND mandt = :iv_mandt;
  ENDMETHOD.

ENDCLASS.
