-- Listing 2.25.sql
-- Parameterization from the SQL console

--Call without parameter name, see listing 19
CALL parameter_test(2, ?, ?, ?);

--The same call with named parameter
CALL parameter_test(iv_project=>2, 
                    ot_tasks=>?, 
                    ot_status_text=>?, 
                    ot_remaining_effort=>?);
