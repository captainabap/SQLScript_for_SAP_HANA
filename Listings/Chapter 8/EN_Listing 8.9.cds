-- Listing 8.9.cds
-- Example for the definition of a CDS table function
 
@EndUserText.label: 'Country texts'
define table function z_country_text
with parameters 
@Environment.systemField: #CLIENT mandt:mandt,
@Environment.systemField: #SYSTEM_LANGUAGE sy_langu:langu
returns {
  mandt:mandt;
  country:land1;
  text:landx50; 
}
implemented by method zjb_cl_country=>get_country_text;
