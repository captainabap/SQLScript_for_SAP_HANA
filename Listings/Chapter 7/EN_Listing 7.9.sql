-- Listing 7.9.sql
-- Example of a view as a stored SELECT query
 
CREATE TABLE invoice_position(
   invoice_nr  INT,
   position    INT, 
   product     NVARCHAR(30),
   quantity       INT,
   amount      DEC(17,2),
   currency    VARCHAR(5),
   primary key (invoice_nr, position)
);
CREATE VIEW invoices 
   AS SELECT invoice_nr,
             SUM(amount*quantity) as amount,
             currency 
      FROM invoice_position
      GROUP BY invoice_nr,
               currency;
               
INSERT INTO invoice_position 
       VALUES (1, 10, 'TVs', 1, 765.23, 'EUR');
INSERT INTO invoice_position 
       VALUES (1, 20, 'Cable'    , 1, 12.99 , 'EUR');
INSERT INTO invoice_position 
       VALUES (1, 30, 'Batteries', 4, 1.99  , 'EUR');
INSERT INTO invoice_position 
       VALUES (2, 10, 'Computer mouse', 1, 23.99 , 'EUR');
INSERT INTO invoice_position 
       VALUES (3, 10, 'Cable'    , 2, 12.99 , 'EUR');
INSERT INTO invoice_position 
       VALUES (3, 20, 'Network swich'  , 1, 27.99 , 'USD');

--SELECT query to the table
SELECT invoice_nr,
       SUM(amount*quantity) as amount,
       currency 
FROM invoice_position
GROUP BY invoice_nr,
       currency;

--SELECT query on the VIEW 
SELECT * FROM invoices;
