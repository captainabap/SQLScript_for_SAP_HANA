-- Listing 2.40.sql
-- Test data for shipping prices

INSERT INTO test_shipping_prices VALUES              
                      (30,30,15,1000,'X','X',3.89);
INSERT INTO test_shipping_prices VALUES
                       (30,30,15,1000,'X','',4);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,1000,'X','X',4.39);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,1000,'X','',4.5);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,2000,'','X',4.99);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,2000,'','',6.99);
INSERT INTO test_shipping_prices VALUES
                       (61,30,15,2000,'','X',5.99);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,10001,'','X',16.49);
INSERT INTO test_shipping_prices VALUES
                       (120,60,60,2000,'','X',16.49);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,2000,'','X',4.99);
INSERT INTO test_shipping_prices VALUES
                       (61,30,15,2000,'','',6.99);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,10001,'','',16.49);
INSERT INTO test_shipping_prices VALUES
                       (120,60,60,2000,'','',16.49);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,10000,'','',9.49);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,40000,'','',0);
INSERT INTO test_shipping_prices VALUES
                       (60,30,15,3000,'X','X',0);
INSERT INTO test_shipping_prices VALUES
                       (121,60,60,2000,'','',0);
