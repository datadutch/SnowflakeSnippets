USE ROLE accountadmin;
USE DATABASE snowflake;
USE WAREHOUSE wh_generic;
select *
from table(information_schema.login_history_by_user('JKOOIJ', result_limit=>1000))
order by event_timestamp;