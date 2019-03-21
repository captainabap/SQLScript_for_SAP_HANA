-- Listing 2.1.sql
--IF-Statement contains an INSERT-Statement

1  IF lv_counter > 0 
2  THEN 
3     INSERT INTO colors VALUES ('Purple');
4  END IF;
