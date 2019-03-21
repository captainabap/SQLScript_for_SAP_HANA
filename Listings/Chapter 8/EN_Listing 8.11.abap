-- Listing 8.11.abap
-- ABAP program for testing the CDS table function from the following example

REPORT zjb_test .

SELECT *
    FROM z_country_text
    INTO TABLE @DATA(lt_country)
    ##db_feature_mode[amdp_table_function].

cl_demo_output=>display(  lt_country ).
