-- Listing 5.9.sql
-- Beispiel f�r UPSERT aus Unterabfrage
 
UPSERT table_1 SELECT key1+10, 
                        key2,
                        'Eingef�gt aus Unterabfrage'
                 FROM table_1;
                 
UPSERT table_1 (key1, key2, value1)
                 SELECT key1+10, 
                        key2,
                        'Ge�ndert durch Unterabfrage'
                 FROM table_1
                 WHERE key2 = 2;
