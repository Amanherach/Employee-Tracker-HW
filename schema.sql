drop database if exists employee_tracker;
create database employee_tracker;
use employee_tracker;
create table departments (
	id integer auto_increment not null,
    name varchar(30) not null,
    primary key (id)
);
create table roles (
	id integer auto_increment not null,
    title varchar(30) not null,
    salary decimal(10,2) not null,
    department_id integer not null, primary key (id), foreign key (department_id) references departments (id)
);
