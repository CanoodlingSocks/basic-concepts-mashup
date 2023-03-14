## Test Questions
 * What is SQL? <br>
__SQL = Structured Query Language__ <br>
Database language used for creating databases, deleting, fetching and modify rows and tables. Can also be used when handling relationships between different entities and variables. 

* What is SQL used for? <br>
It's used for maintaining relational data and data structures within a database such as: <br>
- Executing queries <br>
- Retrieve data <br>
- Insert records <br>
- Update records <br>
- Delete records <br>
- Create new databases <br>
- Create new tables [^1] <br>
- Create views  <br>
- To perform complex operations on the database <br> 

[^1]:  A view is a virtual table that is based on the result set of a SELECT statement. Essentially, a view is a saved SELECT statement that can be treated as a table.

* What are tables in SQL? <br>
A table is a collection of related data that consists of rows and columns. The columns are defined by a data type that determines what type of data can be stored in it.

* Write a basic SQL query that retrieves all columns and rows from a table named mytable. <br>
> SELECT * FROM mytable; 

* How do you filter data in a SQL query? <br>
By using the keyword WHERE when doing a SELECT you can specify a condition that each row must satisfy in order to be included in the results for example: <br>
> SELECT * FROM Employees <br>
> WHERE job_title = 'Manager'; 
There are other comparison operators ( <, > <= >= ) and logical operators such as 'AND', 'OR', 'NOT' as well that can be used to perform more complex queries. <br>

* What is a join in SQL? Give an example. <br>
A join is a way to combine data from two (or more) tables based on a related column between them. There are also several types of joins such as inner join, left/right and full outer join. <br>
> Select Employee.Employee_id, Employee.First_name, Departments.Department_name <br>
> From Employees <br>
> INNER JOIN Departments <br>
> ON Employees.Department_id = Departments.Department_id; <br>
Here we select the employee id and first name from the Employees table and then the department name from the Department table. The ON condition is based on the Department_id column that's in both tables. The INNER JOIN keywords ensures that only matching rows are returned. <br>


* What are aggregate functions in SQL? Give an example. <br>
Aggregate functions are used to perform calculations on a set of values and return a single value as result. Some of the aggregate functions are 'SUM', 'AVG', 'COUNT', 'MIN' and 'MAX'. <br>
> SELECT COUNT(*) FROM Employees; <br>
Returns the total numbers of rows in the Employees table. <br>

* What is a primary key in SQL? <br>
A primary key is a column or columns that uniquely identifies each row in a table. It's used to enforce entity integrity and ensure there are no duplicate or null values in the table. <br>
A primary key must be:
<ol>
- Unique. It must contain a unique value for each row in the table (usually set as an id) <br>
- Cannot be null. <br>
- Can't be changed or updated once it's set. <br>
</ol>

* What is a foreign key in SQL? <br>
A foreign key is a column or set of columns in a table that refers to the primary key of another table. It works as a link between two tables and defines a parent-child relationship between them. The foreign key constraint ensures that the data in the child table corresponds to the data in the parent table and it helps maintain data integrity between the related tables. <br> <br>
For example, if you have two tables, Customer and Orders, you could use a foreign key in the Orders table that references the primary key in the Customers table. This would allow you to link each order to the customer who placed the order.

