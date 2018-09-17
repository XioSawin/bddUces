create procedure altaProfesional
	@nombre varchar (255), @email varchar (80), @telefono varchar (40)
AS
	BEGIN
		INSERT INTO Profesional (nombre, email, telefono, id) values (@nombre, @email, @telefono, 1)
	END
