USE alx_book_store;

SELECT 
    COLUMN_NAME AS 'Column Name', 
    COLUMN_TYPE AS 'Column Type', 
    IS_NULLABLE AS 'Is Nullable', 
    COLUMN_KEY AS 'Key', 
    COLUMN_DEFAULT AS 'Default', 
    EXTRA AS 'Extra'
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'books';
