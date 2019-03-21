-- Listing 4.36.sql
-- Example of quantity conversion to a fixed unit

CREATE TABLE quantities (
         quantity   DECIMAL(15,2),
         unit VARCHAR(3) ) ;
INSERT INTO quantities VALUES(1.0,'MG') ;
INSERT INTO quantities VALUES(1.0,'G') ;
INSERT INTO quantities VALUES(1.0,'KG') ;
INSERT INTO quantities VALUES(1.0,'TO') ;
INSERT INTO quantities VALUES(1.0,'XYZ') ;

SELECT
      quantity          AS "quantity",
      unit            AS "unit",
      CONVERT_UNIT(
             QUANTITY       => quantity,
             SOURCE_UNIT    => unit,
             SCHEMA         => 'JBRANDEIS',
             TARGET_UNIT    => 'KG',
             ERROR_HANDLING => 'set to null',
             CLIENT         => '000')
                      AS "Quantity in Kg",
      'Kg'            AS "Kg"
   FROM quantities;
