select listagg(column_name,',') from demo_db.information_schema.columns
 where table_name = 'CDWH';