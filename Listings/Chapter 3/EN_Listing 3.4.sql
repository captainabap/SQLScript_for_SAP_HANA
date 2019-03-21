-- Listing 3.4.sql
-- Example of the usage of alias names for columns

SELECT '1' AS counter,
       "NAME.FIRST"  AS firstname,
       "NAME.LAST" AS lastname
FROM "sap.hana.democontent.epm.data::MD.Employees";
