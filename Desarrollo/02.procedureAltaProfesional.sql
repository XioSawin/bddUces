create procedure altaProfesional
	@nombre varchar (255), @email varchar (80), @telefono varchar (40)
AS
	BEGIN
		INSERT INTO Profesional (nombre, email, telefono) values (@nombre, @email, @telefono)
	END
