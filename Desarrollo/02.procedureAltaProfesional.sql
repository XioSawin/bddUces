<<<<<<< HEAD
create procedure altaProfesional
	@nombre varchar (255), @email varchar (80), @telefono varchar (40)
AS
	BEGIN
		INSERT INTO Profesional (nombre, email, telefono, id) values (@nombre, @email, @telefono, 1)
	END
=======
create procedure altaProfesional
	@nombre varchar (255), @email varchar (80), @telefono varchar (40)
AS
	BEGIN
		INSERT INTO Profesional (nombre, email, telefono, id) values (@nombre, @email, @telefono, 1)
	END
>>>>>>> 0b51debd7d10ad2a705f2bc52853a614a81b9731
