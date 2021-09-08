CREATE TABLE Department
(  
   id int NOT NULL IDENTITY(1,1),   
   
   name text,
   PRIMARY KEY (id)
   
);


CREATE TABLE Employees
(

id int NOT NULL IDENTITY(1,1),
id_department int NOT NUll,

fio text,
salary float,

PRIMARY KEY (id),
FOREIGN KEY (id_department) REFERENCES Department (id) ON DELETE CASCADE 


);


INSERT INTO Department (name) VALUES ('Development');

INSERT INTO Employees(id_department,fio,salary) VALUES (1,'Иванов Иван Иванович',30000);


