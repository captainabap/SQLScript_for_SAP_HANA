-- Listing 7.12.sql
-- Example of a trigger for an automatic change logging
 
CREATE SEQUENCE lognr; --technical key of the log

CREATE TABLE invoice_position(
    invoice_nr  INT,
    position    INT, 
    product     NVARCHAR(30),
    quantity    INT,
    amount      DEC(17,2),
    currency    VARCHAR(5),
    primary key (invoice_nr, position)
);
CREATE TABLE rp_log(
    log_nr      INT,
    invoice_nr  INT,
    position    INT,
    users       VARCHAR(80),
    datum       DATE,
    zeit        TIME,
    action      VARCHAR(1)
);
--Trigger for inserting
CREATE TRIGGER rp_insert AFTER INSERT 
       ON invoice_position
       REFERENCING NEW ROW ls_new 
       FOR EACH ROW 
BEGIN
    INSERT INTO rp_log VALUES( lognr.nextval,
                               :ls_new.invoice_nr,
                               :ls_new.position,
                               current_user,
                               current_date,
                               current_time,
                               'I');
END;

--Trigger for updating
CREATE TRIGGER rp_update AFTER UPDATE 
       ON invoice_position
       REFERENCING NEW ROW ls_new 
       FOR EACH ROW 
BEGIN
    INSERT INTO rp_log VALUES( lognr.nextval,
                               :ls_new.invoice_nr,
                               :ls_new.position,
                               current_user,
                               current_date,
                               current_time,
                               'U');
END;
    
INSERT INTO invoice_position 
VALUES (1, 10, 'Chocolate', 1, 1.99, 'EUR');

INSERT INTO invoice_position 
VALUES (1,20, 'Espresso coffee beans', 1, 13.99, 'EUR');

UPDATE invoice_position 
   SET amount = '12.99'
   WHERE invoice_nr = 1
     AND position    = 20;
    
SELECT * FROM rp_log;
