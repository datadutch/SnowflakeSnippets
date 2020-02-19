use role accountadmin;
show network policies;

alter network policy Miscname
set ALLOWED_IP_LIST =  ('ip1','ip2','ip3', 'ip4');
desc network policy Miscname;