# log for table creation
SELECT create_time FROM INFORMATION_SCHEMA.TABLES
WHERE table_schema = 'mydb'
AND table_name = 'add_on' ;

# Update log
SELECT UPDATE_TIME
FROM   information_schema.tables
WHERE  TABLE_SCHEMA = 'mydb'