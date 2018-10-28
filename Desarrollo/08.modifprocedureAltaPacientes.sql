create procedure altaPacientes
	@nombre varchar (255), @email varchar (80), @telefono varchar (40), @id int
AS
	BEGIN
		INSERT INTO Pacientes (nombre, email, telefono, id) values (@nombre, @email, @telefono, @id)
	END
