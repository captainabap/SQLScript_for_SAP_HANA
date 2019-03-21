CLASS zcl_amdp_call DEFINITION PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_s_price,
             item        TYPE numc4,
             net_price   TYPE wertv9,
             gross_price TYPE wertv9,
             vat         TYPE wertv9,
             waehrs      TYPE waers,
           END OF ty_s_price.

    TYPES ty_t_price TYPE STANDARD TABLE OF ty_s_price.

    INTERFACES if_amdp_marker_hdb.

    METHODS calculate_vat
      IMPORTING
        VALUE(iv_vat)   TYPE int1
      CHANGING
        VALUE(ct_price) TYPE ty_t_price.

    METHODS calculate_gross_price
      IMPORTING
        VALUE(iv_vat)   TYPE int1
      CHANGING
        VALUE(ct_price) TYPE ty_t_price.

ENDCLASS.

CLASS zcl_amdp_call IMPLEMENTATION.
  METHOD calculate_gross_price BY DATABASE PROCEDURE
                        FOR HDB LANGUAGE SQLSCRIPT
                        USING zcl_amdp_call=>calculate_vat.
    CALL "ZCL_AMDP_CALL=>CALCULATE_VAT"(
                              iv_vat => :iv_vat,
                              ct_price => :ct_price,
                              ct_price__in__ => :ct_price );

    ct_price = SELECT item,
                      net_price,
                      net_price + vat as gross_price,
                      vat,
                      waehrs
                      FROM :ct_price;
  ENDMETHOD.

  METHOD calculate_vat BY DATABASE PROCEDURE
                        FOR HDB LANGUAGE SQLSCRIPT.
    ct_price = SELECT item,
                      net_price,
                      gross_price,
                      net_price * :iv_vat / 100 as vat,
                      waehrs
                      FROM :ct_price;

  ENDMETHOD.

ENDCLASS.
