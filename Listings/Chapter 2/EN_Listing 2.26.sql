-- Listing 2.26.sql
-- Syntax of the CREATE FUNCTION Statement
CREATE FUNCTION <Functionname> 
[(<IN-Parameterlist)]
RETURNS <OUT-Parameterdefinition>
[LANGUAGE SQLSCRIPT] 
[SQL SECURITY {DEFINER|INVOKER} ] 
[DEFAULT SCHEMA Defaultschema] 
[DETERMINISTIC] 
AS 
BEGIN 
<Block> 
END
