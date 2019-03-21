-- Listing 8.1.abap
-- Example of a simple AMDP method

CLASS zcl_amdp_demo DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.
    TYPES gty_tt_countries TYPE TABLE OF t005t .
    METHODS get_countries
      IMPORTING
        VALUE(iv_langu)   TYPE  langu
      EXPORTING
        VALUE(et_country) TYPE  gty_tt_countries
      CHANGING
        VALUE(cv_subrc)   TYPE sy-subrc.
ENDCLASS.

CLASS zcl_amdp_demo IMPLEMENTATION.
  METHOD get_countries
     BY DATABASE PROCEDURE FOR HDB LANGUAGE SQLSCRIPT
     USING t005t.

    et_country = select * 
                 from t005t
                 where spras = :iv_langu;
                 
    SELECT CASE 
              WHEN COUNT(*) > 0 
              THEN 0
              ELSE 4 
              END AS subrc
          INTO cv_subrc
          FROM :et_country;
  ENDMETHOD.
ENDCLASS.
