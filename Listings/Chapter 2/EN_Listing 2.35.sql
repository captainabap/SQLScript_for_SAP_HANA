-- Listing 2.35.sql
-- Testcases for the function UDF_SIZE_CATEGORY

SELECT udf_size_category(30, 30, 10)  FROM DUMMY;
SELECT udf_size_category(35, 30, 15)  FROM DUMMY;
SELECT udf_size_category(30, 30, 30)  FROM DUMMY;
SELECT udf_size_category(121, 30, 30) FROM DUMMY;
