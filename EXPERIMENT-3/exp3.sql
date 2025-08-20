--MEDIUM LEVEL--
CREATE TABLE depart (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
CREATE TABLE empl (
    id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES depart(id)
);
INSERT INTO depart (id, dept_name) VALUES
(1, 'IT'),
(2, 'SALES');

INSERT INTO empl(id, name, salary, department_id) VALUES
(1, 'JOE', 70000, 1),
(2, 'JIM', 90000, 1),
(3, 'HENRY', 80000, 2),
(4,'Sam',60000,2),
(4,'MAX',90000,1);


select d.dept_name,e.name,e.salary
from empl e
left join
depart d
on d.id = e.department_id
where e.salary in(
select max(t.salary)
from empl t
group by t.department_id
)
order by dept_name;

--HARD LEVEL--
create table A(
emp_id int,
ename varchar(30),
salary int
);
create table B(
emp_id int,
ename varchar(30),
salary int
);

insert into A(emp_id,ename,salary)
values(1,'AA',1000),(2,'BB',300);

insert into B(emp_id,ename,salary)
values(1,'BB',400),(2,'CC',100);


select emp_id as Emp_id,min(ename) as Name,min(salary) as Salary
from (select *
from A
union all
select *
from B) as ta
group by emp_id;





