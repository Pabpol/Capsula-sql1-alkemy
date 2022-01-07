CREATE TABLE profesor (
id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
apellido VARCHAR(45) NOT NULL,
fecha_nacimiento DATE NOT NULL,
salario FLOAT NOT NULL,
PRIMARY KEY(id)
);
ALTER Table curso ADD PROFESOR_id INT;

INSERT INTO profesor (nombre, apellido, fecha_nacimiento,
salario) 
VALUES 
('Juan','Pérez','1990-06-06',55000),
('Maria Emilia','Paz','1984-07-15',72000),
('Martin','Correa','1987-12-07',63000),
('Lucia','Diaz','1991-02-24',45000),
('Raul','Martinez','1980-10-15',55000),
('Mabel','Rios','1982-06-12',83000);

-- 1. Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.
SELECT nombre, apellido, fecha_nacimiento FROM profesor ORDER BY fecha_nacimiento ASC;

-- 2. Todos los profesores cuyo salario sea mayor o igual a 65000.
SELECT * FROM profesor WHERE salario >= 65000;

-- 3. Todos los profesores que nacieron en la década del 80.
SELECT * FROM profesor WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31';

-- 4. 5 registros
SELECT * FROM profesor LIMIT 5;

-- 5. Todos los profesores cuyo apellido inicie con la letra “P”
SELECT * FROM profesor WHERE apellido LIKE "p%";

-- 6. Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
SELECT * FROM profesor WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31' AND salario > 80000;