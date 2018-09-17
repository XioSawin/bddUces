<<<<<<< HEAD
DROP PROCEDURE altaServicio
create procedure altaServicio
	@nombre varchar (50), @tipo char (2) , @id int
AS
	BEGIN
		INSERT INTO Servicio (nombre, tipo, id) values (@nombre, @tipo, @id)
=======
DROP PROCEDURE altaServicio
create procedure altaServicio
	@nombre varchar (50), @tipo char (2) , @id int
AS
	BEGIN
		INSERT INTO Servicio (nombre, tipo, id) values (@nombre, @tipo, @id)
>>>>>>> 8f4e164e84946d908e38f4f843e232278fc6f288
	END