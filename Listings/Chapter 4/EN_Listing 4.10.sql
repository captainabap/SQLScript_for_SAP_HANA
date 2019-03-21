-- Listing 4.10.sql
-- Example for extracting E-Mail addresses from a log table

CREATE TABLE logtable (line  nvarchar(100)) ;
INSERT INTO logtable VALUES
('Missing authorizations for elbert@brandeis.de') ;
INSERT INTO logtable VALUES
('Login failed: sibrylle@tiergarten-ma.com.') ;
INSERT INTO logtable VALUES
('User ele.fant@tiergarten-ma.de has been logged in.') ;
INSERT INTO logtable VALUES
('Server restarted.') ;

SELECT SUBSTR_REGEXPR(
           '\b([A-Z0-9._%+-]+)@([A-Z0-9.-]+\.[A-Z]{2,})\b'
           FLAG 'i'
           IN line
           GROUP 1 ) AS name,
      SUBSTR_REGEXPR(
          '\b([A-Z0-9._%+-]+)@([A-Z0-9.-]+\.[A-Z]{2,})\b'
          FLAG 'i'
          IN line
          GROUP 2 ) AS host,
      SUBSTR_REGEXPR(
          '\b([A-Z0-9._%+-]+)@([A-Z0-9.-]+\.[A-Z]{2,})\b'
          FLAG 'i'
          IN line ) AS email,
      line
   FROM      logtable;
DROP TABLE logtable;
