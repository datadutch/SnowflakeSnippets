-- snippet to create a loop, for instance for building a date dimension
-- or to insert dummy/test data into a table

USE WAREHOUSE DEMO_WH;

-- snippet to create a loop, for instance for building a date dimension
-- or to insert dummy/test data into a table

SELECT 
  DATEADD(DAY, SEQ4(), '2020-01-01')				AS DATEKEY
, DAYNAME(DATEKEY) 									AS DAY_NAME
, DAYOFWEEK(DATEKEY) 								AS DAY_OF_WEEK
, TRUNC(DATEKEY, 'MONTH') 							AS FIRST_DAY_OF_MONTH
, TIMESTAMPADD(DAY,1,DATEKEY) 						AS NEXT_DAY
FROM TABLE(GENERATOR(ROWCOUNT=>66));

-- the result:
/*
DATE	DAY_NAME	DAY_OF_WEEK	FIRST_DAY_OF_MONTH	NEXT_DAY
2020-01-01 00:00:00	Wed	3	2020-01-01 00:00:00	2020-01-02 00:00:00
2020-01-02 00:00:00	Thu	4	2020-01-01 00:00:00	2020-01-03 00:00:00
2020-01-03 00:00:00	Fri	5	2020-01-01 00:00:00	2020-01-04 00:00:00
2020-01-04 00:00:00	Sat	6	2020-01-01 00:00:00	2020-01-05 00:00:00
2020-01-05 00:00:00	Sun	0	2020-01-01 00:00:00	2020-01-06 00:00:00
*/




