create procedure altaPacientes
	@nombre varchar (255), @email varchar (80), @telefono varchar (40)
AS
	BEGIN
		INSERT INTO Pacientes (nombre, email, telefono) values (@nombre, @email, @telefono)
	END
