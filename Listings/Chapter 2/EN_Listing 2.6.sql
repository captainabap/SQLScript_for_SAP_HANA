-- Listing 2.6.sql
-- Example for operator parentheses
SELECT 
       "PURCHASEORDERID",
       "PURCHASEORDERITEM",
       "PRODUCT.PRODUCTID",
       "CURRENCY",
       case 
           when netamount <> 0 
--- with parentheses :
---            then ((grossamount / netamount) * 100) - 100 
--- without parentheses : 
               then grossamount / netamount * 100 - 100 
           else 0 
           end     as tax,
       "GROSSAMOUNT",
       "NETAMOUNT",
       "TAXAMOUNT",
       "QUANTITY",
       "QUANTITYUNIT",
       "DELIVERYDATE"
FROM "SAP_HANA_DEMO"."sap.hana.democontent.epm.data::PO.Item";
