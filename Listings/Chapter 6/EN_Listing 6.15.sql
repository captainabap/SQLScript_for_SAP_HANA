-- Listing 6.15.sql
-- Search in tables with the SEARCH operator

DO (OUT ot_result TABLE( id INT, 
                         status INT,
                         assignee INT,
                         title NVARCHAR(50))=>? )
BEGIN
   DECLARE lv_index INT = 0; 
   
   ot_result = SELECT id, 
					  status,
					  assignee,
					  title
					  FROM tasks
					  ORDER BY id;
         
-- Usage of the SEARCH operator       
    lv_index = :ot_result.SEARCH((status, assignee), 
                                 (3,3));
    
    :ot_result.DELETE(lv_index);
    
-- Usage of the SEARCH operator in the DELETE operator
    :ot_result.DELETE(:ot_result.SEARCH((status, assignee),   
                                        (3,3)));
   
END;
