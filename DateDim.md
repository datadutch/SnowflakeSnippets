# building a date dimension: a table that contains a range of dates for use in our reporting/analytics
## what do we need: dateadd, table function, generator, rowcount, sequences

[dateadd](https://docs.snowflake.net/manuals/sql-reference/functions/dateadd.html)
Use dateadd to define the grain of the timerange (days, hours, seconds)

[table functions](https://docs.snowflake.net/manuals/sql-reference/functions-table.html)
These functions provide some magic to get the job done, they are Snowflake built-in 

[generator function](https://docs.snowflake.net/manuals/sql-reference/functions/generator.html)
Creates rows of data based either on a specified number of rows, a specified generation period (in seconds), or both. 
This system-defined table function enables synthetic row generation.
Note that it is possible to generate virtual tables with 0 columns but possibly many rows. 
Such virtual tables are useful for queries whose SELECT clause consists entirely of data-generating functions.

[sequences](https://docs.snowflake.net/manuals/sql-reference/functions/seq1.html#seq1-seq2-seq4-seq8)
 generates increasing integers

[My Markdown Reference](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)