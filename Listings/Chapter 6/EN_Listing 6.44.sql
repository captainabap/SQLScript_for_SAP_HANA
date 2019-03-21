-- Listing 6.44.sql
-- Examples for raising user-defined exceptions

--Only with error code and text:
SIGNAL SQL_ERROR_CODE 10000 SET MESSAGE_TEXT = 'My error';

--or with a defined error name and text:
DECLARE my_error CONDITION FOR SQL_ERROR_CODE 10000;
... 
SIGNAL my_error SET MESSAGE_TEXT = 'My error'; 

--or without error code and text: 
DECLARE my_error CONDITION;
... 
SIGNAL my_error;
