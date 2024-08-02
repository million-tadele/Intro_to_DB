USE alx_book_store;

SELECT 
    c.COLUMN_NAME AS 'Column Name', 
    c.COLUMN_TYPE AS 'Column Type', 
    c.IS_NULLABLE AS 'Is Nullable', 
    c.COLUMN_KEY AS 'Key', 
    c.COLUMN_DEFAULT AS 'Default', 
    c.EXTRA AS 'Extra'
FROM 
    (SELECT * FROM information_schema.tables WHERE table_schema = DATABASE() AND table_name = 'books') t
JOIN 
    information_schema.columns c ON t.table_name = c.table_name
WHERE 
    t.table_schema = DATABASE();

