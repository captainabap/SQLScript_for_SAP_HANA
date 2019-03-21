-- Listing 10.8.sql
-- Code for testing

SET 'ABAPVARCHARMODE' = 'FALSE';
SELECT 'Peter' || ' ' || 'Mueller' FROM DUMMY;
SET 'ABAPVARCHARMODE' = 'TRUE';
SELECT 'Peter' || ' ' || 'Mueller' FROM DUMMY;
