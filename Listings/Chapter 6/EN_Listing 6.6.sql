-- Listing 6.6.sql
-- Nested blocks and overlapping of variables
 
DO
BEGIN --Beginning of the outer block
   DECLARE var1 VARCHAR(10) default 'Outer';
   DECLARE var2 VARCHAR(10) default 'Outer';

   BEGIN --Beginning of the inner block
      DECLARE var1 VARCHAR(10);--Var1 declared again

      var1 = 'Inner';
      var2 = 'Inner';
      SELECT 'Inner block:' as comment,
             :var1,
             :var2 
      FROM DUMMY;
   END;-- End of the inner block

   SELECT 'Outer block' as comment,
          :var1,
          :var2
   FROM DUMMY;
END;--End of the outer block 
