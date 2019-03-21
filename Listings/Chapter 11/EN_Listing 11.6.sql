-- Listing 11.6.sql
-- Call of the SQLScript Code Analyzer for existing procedures
 
DO BEGIN
   lt_rules = 
      SELECT rule_namespace, 
             rule_name, 
             category
      FROM sqlscript_analyzer_rules;
   	
   lt_objects = 
      SELECT schema_name ,
             procedure_name AS object_name,
             definition 
      FROM procedures
      WHERE schema_name like 'JBRANDEIS';
   
   CALL analyze_sqlscript_objects( :lt_objects,
                                   :lt_rules, 
                                   lt_result_objects,
                                   lt_result_findings );
                                   
   SELECT objects.*,
          findings.*
   FROM :lt_result_objects AS objects
   INNER JOIN :lt_result_findings AS findings
   ON objects.object_definition_id 
                         = findings.object_definition_id;
END;
