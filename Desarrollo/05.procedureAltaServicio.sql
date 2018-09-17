<<<<<<< HEAD
create procedure altaServicio
	@nombre varchar (50), @tipo char (2)
AS
	BEGIN
		INSERT INTO Servicio (nombre, tipo, id) values (@nombre, @tipo, 1)
	END
=======
create procedure altaServicio
	@nombre varchar (50), @tipo char (2)
AS
	BEGIN
		INSERT INTO Servicio (nombre, tipo, id) values (@nombre, @tipo, 1)
	END
>>>>>>> 0b51debd7d10ad2a705f2bc52853a614a81b9731
 