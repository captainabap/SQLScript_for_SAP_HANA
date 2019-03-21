-- Listing 4.40.sql
-- Example for bitwise processing of binary data

CREATE TABLE binval(text NVARCHAR(50),
                    value int);
INSERT INTO binval VALUES ('Integer 248', 248 );
INSERT INTO binval VALUES ('Integer 31', 31 );
INSERT INTO binval VALUES ('XOR(248, 31)', BITXOR(248, 31));
INSERT INTO binval VALUES ('AND(248, 31)', BITAND(248, 31));
INSERT INTO binval VALUES ('OR(248, 31)' , BITOR(248, 31));

SELECT text,
       udf_int_as_bit_string(value)
FROM binval;

DROP TABLE binval;
