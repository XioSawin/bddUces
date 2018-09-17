<<<<<<< HEAD
create procedure altaPacientes
	@nombre varchar (255), @email varchar (80), @telefono varchar (40)
AS
	BEGIN
		INSERT INTO Pacientes (nombre, email, telefono, id) values (@nombre, @email, @telefono, 1)
=======
create procedure altaPacientes
	@nombre varchar (255), @email varchar (80), @telefono varchar (40)
AS
	BEGIN
		INSERT INTO Pacientes (nombre, email, telefono, id) values (@nombre, @email, @telefono, 1)
>>>>>>> 0b51debd7d10ad2a705f2bc52853a614a81b9731
	END