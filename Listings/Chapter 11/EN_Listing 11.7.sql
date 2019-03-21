-- Listing 11.7.sql
-- Calling the SQLScript Code Analyzer for a new procedure to be created

DO BEGIN
   lt_rules = 
      SELECT rule_namespace, 
             rule_name, 
             category
      FROM sqlscript_analyzer_rules;
          
   CALL analyze_sqlscript_definition(
       ' 
       CREATE procedure check_me(IN iv_value INT, 
                                 OUT ov_value INT)
       AS BEGIN
          DECLARE lv_unused VARCHAR(3) default '' '';
          ov_value = iv_value;
          END;
       ',
       :lt_rules,
       lt_result_findings );
   SELECT * FROM :lt_result_findings;
END;
