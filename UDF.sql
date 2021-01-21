-- https://docs.snowflake.com/en/sql-reference/udf-table-functions.html
use role RL_DATATECH_P_ADMIN;
show schemas;
create function db_datatech_p.public.t()
    returns table(msg varchar)
    as
    $$
        select 'Hello'
        union
        select 'World'
    $$;
    
    select msg 
    from table(t());