USE WAREHOUSE demo_wh;
USE DATABASE demo_db;
CREATE TEMP TABLE a (kolom1 variant);
SELECT * FROM a;
INSERT INTO a VALUES ('1');

--de foutmelding die nu optreedt:
-- Expression type does not match column data type, expecting VARIANT but got VARCHAR(1) for column 