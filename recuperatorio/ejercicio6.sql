/*Nos informan de la creación de un nuevo departamento dentro de la empresa que tendrá el nombre consultants, este está en la locación ubicada en ‘2004 Charade Rd’ de Seattle
 y un nuevo tipo de trabajo de nombre ‘consultant’. adicionalmente nos envió la información de estos 3 consultores que deben cargarse perteneciendo a este nuevo departamento 
 y tipo de trabajo:*/

INSERT INTO departments (department_id,department_name,location_id)
VALUES ('12', 'Consultants', '1700');

INSERT INTO jobs (job_id, job_title,min_salary,max_salary)
VALUES ('20','consultant','5000','7500');


INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
VALUES
    ('207', 'Raul', 'Lopez','rlopez@gmail.com','334.445.556','2024-07-01','20','5000','105','12'),
    ('208', 'Andres', 'Gonzales','agonzales@gmail.com','334.445.556','2024-07-01','20','6000','106','12'),
    ('209', 'Laura', 'Fernandez','lfernandez"gmail.com','334.445.556','2024-07-01','20','7500','107','12');