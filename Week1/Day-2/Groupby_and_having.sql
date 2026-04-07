   --Employee TABLE
  CREATE TABLE Employee (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  department VARCHAR(50),
  salary DECIMAL(10, 2),
  joining_date DATE
  );
  INSERT INTO Employee (emp_id, emp_name, department, salary, joining_date) VALUES
  (1, 'Karthik', 'HR', 60000.00, '2021-01-15'),
  (2, 'Pratik', 'Finance', 70000.00, '2021-03-10'),
  (3, 'Veer', 'HR', 55000.00, '2021-06-20'),
  (4, 'Priya', 'Finance', 80000.00, '2022-01-05'),
  (5, 'Ajay', 'Engineering', 75000.00, '2020-11-01'),
  (6, 'Vijay', 'Engineering', 78000.00, '2019-05-22'),
  (7, 'Veena', 'HR', 62000.00, '2023-03-12'),
  (8, 'Meena', 'Marketing', 65000.00, '2022-08-18');


--Find the total salary for each department in the Employee table.
select sum(salary) as Total_Salary,department from Employee group by department;

--Count the number of employees in each department.
select count(*) as Number_of_Employees , department from Employee group by department;

--Calculate the average salary of employees in each department.
select avg(salary)  as Average_Salary_Dept, department from Employee group by department;

--Find the maximum salary in each department.
select max(salary) as Highest_salary, department from Employee group by department;

--Find the minimum salary in each department.
select min(salary) as Lowest_salary, department from Employee group by department;

--GROUP BY with Conditions

--Find the total salary for departments where the total salary exceeds 100,000.
select sum(salary) as Total_salary, department from Employee group by department having Total_salary>100000;

--Count the number of employees in departments with more than 2 employees.
  select count(*) as Num_Of_Employees, department from Employee group by department having Num_Of_Employees>2;

--Calculate the average salary for employees who joined after 2021-01-01, grouped by department.
  select avg(salary), department from Employee where joining_date > '2021-01-01' group by department;

--Find the departments where the maximum salary is greater than 75,000.
  select department from Employee group by department having max(salary)>75000;

--List the departments where the total salary is less than 150,000.
  select sum(salary) as Total_salary, department from Employee group by department having Total_salary<150000;

--GROUP BY with HAVING

--Find the total number of employees grouped by department, but only include departments with more than 1 employee.
 select count(*) as Total_no_of_Employees, department from Employee group by department having Total_no_of_Employees>1;

--Calculate the total salary of each department and show only those where the total exceeds 125,000.
  select sum(salary) as Total_salary, department from Employee group by department having Total_salary>125000;

--Count the number of employees in each department, but include only departments with more than 2 employees.
  select count(*) as Total_no_of_Employees, department from Employee group by department having Total_no_of_Employees>2;

--Find the average salary in each department where the average salary is above 60,000.
  select avg(salary)  as Average_Salary_Dept, department from Employee group by department having Average_Salary_Dept>60000;

--Show departments where the sum of salaries is between 100,000 and 200,000.
select sum(salary), department from Employee group by department having sum(salary) between 100000 and 200000;














