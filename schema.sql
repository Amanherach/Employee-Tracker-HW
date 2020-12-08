drop database if exists employeesDB;
create database employeesDB;
use employeesDB;
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
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45) NULL,
  last_name VARCHAR(45) NULL,
  role_id INT NULL,
  manager_id INT NULL,
  PRIMARY KEY (id)
);
