# SQL Files
This folder contains a collection of .sql files that demonstrate basic SQL queries and concepts.
<br>
The Queries-folder contains .sql files that should be able to be inputted into a SQL Database program such as MySQL and Microsoft SQL Server Manager (only tested the latter)

## SQL Basics
SQL (Structured Query Language) is a programming language used to manage relational databases. Here are some basic SQL concepts that you should be familiar with:

* __Tables:__ SQL databases store data in tables, which are composed of columns and rows. <br><br>

* __Queries:__ SQL queries are used to retrieve data from tables. A basic query might look like this: <br> 

>SELECT* FROM mytable;.
<br>

* __Filters:__ You can use WHERE clauses to filter the data returned by your queries. For example: <br>
>SELECT * FROM mytable WHERE age > 18;.

* __Joins:__ SQL supports several types of joins, which allow you to combine data from multiple tables. For example: <br>

>SELECT * FROM orders INNER JOIN customers ON orders.customer_id = customers.id;.
<br>

* __Aggregation:__ You can use aggregate functions like SUM, AVG, and COUNT to summarize data. For example: <br>

>SELECT COUNT(*) FROM mytable;.
<br>

---

