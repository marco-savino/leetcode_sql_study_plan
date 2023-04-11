/*
Table: Employee

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key column for this table.
Each row of this table contains information about the salary of an employee.

 

Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.

The query result format is in the following example.

 

Example 1:

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
Output: 
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+

Example 2:

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
+----+--------+
Output: 
+---------------------+
| SecondHighestSalary |
+---------------------+
| null                |
+---------------------+


*/

--select max(salary) as SecondHighestSalary #MAX restituisce NULL se input è NULL
--from employee
--where salary not in ( #seleziona tutti i salari che non sono quello massimo
--  select max(salary)  #restituisce solo il salario massimo
--  from employee
--)

select(
  select distinct salary as SecondHighestSalary
  from employee
  order by salary desc
  limit 1 offset 1
) as SecondHighestSalary
-- la query interna non restituisce output, quindi la query esterna non 
-- può operare e restituisce NULL, nel caso non ci sia il secondo salario
