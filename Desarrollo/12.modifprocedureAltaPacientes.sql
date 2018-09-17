<<<<<<< HEAD
DROP PROCEDURE altaPacientes

create procedure altaPacientes
	@nombre varchar (255), @email varchar (80), @telefono varchar (40), @id int
AS
	BEGIN
		INSERT INTO Pacientes (nombre, email, telefono, id) values (@nombre, @email, @telefono, @id)
=======
DROP PROCEDURE altaPacientes

create procedure altaPacientes
	@nombre varchar (255), @email varchar (80), @telefono varchar (40), @id int
AS
	BEGIN
		INSERT INTO Pacientes (nombre, email, telefono, id) values (@nombre, @email, @telefono, @id)
>>>>>>> 8f4e164e84946d908e38f4f843e232278fc6f288
	END