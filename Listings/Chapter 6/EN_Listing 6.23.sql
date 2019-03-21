-- Listing 6.23.sql
-- Anonymous block for testing the function UDF_SORT_3

DO (OUT ov_lower INT=>?, 
    OUT ov_middle INT=>?, 
    OUT ov_higher  INT=>?)
BEGIN
   (ov_lower, ov_middle, ov_higher) = udf_sort_3(1,11,9);
END;  
