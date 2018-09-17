DROP PROCEDURE altaServicio
create procedure altaServicio
	@nombre varchar (50), @tipo char (2) , @id int
AS
	BEGIN
		INSERT INTO Servicio (nombre, tipo, id) values (@nombre, @tipo, @id)
	END