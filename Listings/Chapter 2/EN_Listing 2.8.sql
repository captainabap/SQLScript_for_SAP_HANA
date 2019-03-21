-- Listing 2.8.sql
-- Different typing of table variables

CREATE TYPE id_text AS TABLE( id INT, 
                              text NVARCHAR(12));

DO BEGIN
-- Type of a database table
   DECLARE lt_tab1 tasks; 
-- Type of a tabletype
   DECLARE lt_tab2 id_text; 
-- Table type defined in code with TABLE 
   DECLARE lt_tab3 TABLE( id   INT, 
                          col1 NVARCHAR(12) );
   lt_tab1 = SELECT * FROM tasks;
   lt_tab2 = SELECT id, 
                    title as text 
		     FROM :lt_tab1;
   lt_tab3 = SELECT id, 
                    title as col1 
		     FROM :lt_tab1;
   SELECT * FROM :lt_tab1;
   SELECT * FROM :lt_tab2;
   SELECT * FROM :lt_tab3;
END;
