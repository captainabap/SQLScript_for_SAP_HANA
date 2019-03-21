-- Listing 3.5.sql
-- Examples for the usage of the correlation name in the column list

SELECT tab.table_name,   --Column TABLE_NAME is ambigous!
       col.column_name
FROM m_cs_tables AS tab
   INNER JOIN m_cs_columns AS col
   ON tab.table_name = col.table_name;
