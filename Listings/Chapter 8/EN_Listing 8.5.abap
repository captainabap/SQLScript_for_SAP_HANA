-- Listing 8.5.abap
-- Static Factory Method GET_INSTANCE in ABAP
 
  METHOD get_instance.
    DATA lv_classname TYPE classname.
    CASE sy-dbsys.
      WHEN 'HDB'.
        lv_classname = 'ZCL_READ_XYZ_AMDP'.
      WHEN OTHERS.
        lv_classname = 'ZCL_READ_XYZ_OSQL'.
    ENDCASE.

    CREATE OBJECT ro_instance TYPE (lv_classname).
  ENDMETHOD.
