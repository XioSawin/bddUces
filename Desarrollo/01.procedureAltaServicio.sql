
create procedure altaServicio
	@nombre varchar (50), @tipo char (2)
AS
	BEGIN
		INSERT INTO Servicio (nombre, tipo) values (@nombre, @tipo)
	END

 
