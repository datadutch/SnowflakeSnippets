-- snippet to create a loop, for instance for building a date dimension
-- or to insert dummy/test data into a table

-- building a date dimension: a table that contains a range of dates for use in our reporting/analytics
-- what do we need: dateadd, table function, generator, rowcount, sequences

-- dateadd: 			https://docs.snowflake.net/manuals/sql-reference/functions/dateadd.html
-- Use dateadd to define the grain of the timerange (days, hours, seconds)
-- table functions: 	https://docs.snowflake.net/manuals/sql-reference/functions-table.html
-- These functions provide some magic to get the job done, they are Snowflake built-in 
-- generator function: 	https://docs.snowflake.net/manuals/sql-reference/functions/generator.html
-- Creates rows of data based either on a specified number of rows, a specified generation period (in seconds), or both. 
-- This system-defined table function enables synthetic row generation.
-- Note that it is possible to generate virtual tables with 0 columns but possibly many rows. 
-- Such virtual tables are useful for queries whose SELECT clause consists entirely of data-generating functions.
-- sequences: 			https://docs.snowflake.net/manuals/sql-reference/functions/seq1.html#seq1-seq2-seq4-seq8
-- generates increasing integers

SELECT DATEADD(DAY, SEQ4(), '2020-01-01') AS DATE
FROM TABLE(GENERATOR(ROWCOUNT=>31));

-- the result:
/*
DATE
2020-01-01 00:00:00.000
2020-01-02 00:00:00.000
2020-01-03 00:00:00.000
2020-01-04 00:00:00.000
2020-01-05 00:00:00.000
2020-01-06 00:00:00.000
2020-01-07 00:00:00.000
2020-01-08 00:00:00.000
2020-01-09 00:00:00.000
2020-01-10 00:00:00.000
2020-01-11 00:00:00.000
2020-01-12 00:00:00.000
2020-01-13 00:00:00.000
2020-01-14 00:00:00.000
2020-01-15 00:00:00.000
2020-01-16 00:00:00.000
2020-01-17 00:00:00.000
2020-01-18 00:00:00.000
2020-01-19 00:00:00.000
2020-01-20 00:00:00.000
2020-01-21 00:00:00.000
2020-01-22 00:00:00.000
2020-01-23 00:00:00.000
2020-01-24 00:00:00.000
2020-01-25 00:00:00.000
2020-01-26 00:00:00.000
2020-01-27 00:00:00.000
2020-01-28 00:00:00.000
2020-01-29 00:00:00.000
2020-01-30 00:00:00.000
2020-01-31 00:00:00.000
*/


