	CREATE DATABASE workspace;

	USE workspace;

	CREATE TABLE Departamento (
		deptID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
		nombreDepto VARCHAR(100) NOT NULL,
		ubicacion VARCHAR(100)
	);

	CREATE TABLE Empleado (
		empID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
		nombre VARCHAR(100) NOT NULL,
		apellido VARCHAR(100) NOT NULL,
		edad INT(100) NOT NULL,
		salario FLOAT NOT NULL,
        deptID INT NOT NULL,
		FOREIGN KEY (deptID)
		REFERENCES Departamento(deptID)
	);