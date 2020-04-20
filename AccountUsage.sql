USE DATABASE snowflake;

select * from ACCOUNT_USAGE.AUTOMATIC_CLUSTERING_HISTORY limit 5;  -- leeg
select * from account_usage.COLUMNS limit 5;
select * from account_usage.COPY_HISTORY limit 5; -- s3 objecten
select * from account_usage.DATABASES limit 5; -- database en eigenaar
select * from account_usage.DATABASE_STORAGE_USAGE_HISTORY limit 5; 
select * from account_usage.DATA_TRANSFER_HISTORY limit 5;  -- leeg
select * from account_usage.FILE_FORMATS limit 5;
select * from account_usage.FUNCTIONS limit 5;
select * from account_usage.GRANTS_TO_ROLES limit 5;
select * from account_usage.GRANTS_TO_USERS limit 5;
select * from account_usage.LOAD_HISTORY limit 5;
select * from account_usage.LOGIN_HISTORY limit 5;
select * from account_usage.MATERIALIZED_VIEW_REFRESH_HISTORY limit 5; -- leeg
select * from account_usage.METERING_DAILY_HISTORY limit 5; -- credits
select * from account_usage.METERING_HISTORY limit 5; -- credits
select * from account_usage.PIPES limit 5;
select * from account_usage.PIPE_USAGE_HISTORY limit 5; -- leeg
select * from account_usage.QUERY_HISTORY limit 5; 
select * from account_usage.REFERENTIAL_CONSTRAINTS limit 5; -- leeg
select * from account_usage.REPLICATION_USAGE_HISTORY limit 5; -- leeg
select * from account_usage.ROLES limit 5;
select * from account_usage.SCHEMATA limit 5;
select * from account_usage.SEQUENCES limit 5;
select * from account_usage.STAGES limit 5;
select * from account_usage.STAGE_STORAGE_USAGE_HISTORY limit 5;
select * from account_usage.STORAGE_USAGE limit 5;
select * from account_usage.TABLES limit 5;
select * from account_usage.TABLE_CONSTRAINTS limit 5;
select * from account_usage.TABLE_STORAGE_METRICS limit 5;
select * from account_usage.USERS limit 5;
select * from account_usage.VIEWS limit 5;
select * from account_usage.WAREHOUSE_LOAD_HISTORY limit 5;
select * from account_usage.WAREHOUSE_METERING_HISTORY limit 5; -- credits