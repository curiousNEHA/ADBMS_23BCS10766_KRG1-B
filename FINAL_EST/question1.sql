create table employ
(
emp_id int,
emp_name varchar(20),
dept_id int,
salary int
)

create table dep
(
dept_id int,
dept_name varchar(10),
budget int
)

create table projects
(
project_id int,
project_name varchar(20),
dept_id int,
cost int
)
insert into employ values
(1,'Alice',1,90000);

insert into dep values
(1,'IT',100000);

insert into projects
values(101,'Portal',1,95000);


select e1.emp_id,e1.emp_name
from employ e1
inner join
projects p1
on e1.dept_id = p1.dept_id
where
p1.cost >
(select AVG(d1.budget) from
dep d1 inner join
projects p2
on d1.dept_id = p2.dept_id
where d1.dept_id = e1.dept_id
and p2.project_id = p1.project_id)
