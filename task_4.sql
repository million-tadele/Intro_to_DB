USE information_schema;

SELECT COLUMN_NAME AS 'Column Name', 
       COLUMN_TYPE AS 'Column Type', 
       IS_NULLABLE AS 'Is Nullable', 
       COLUMN_KEY AS 'Key', 
       COLUMN_DEFAULT AS 'Default', 
       EXTRA AS 'Extra'
FROM COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'books';
