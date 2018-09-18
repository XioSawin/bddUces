<<<<<<< HEAD
DROP trigger bajaPacientes

create trigger bajaPacientes
	on Pacientes
	instead of
	delete
AS
	begin
		DECLARE @name varchar(50)

		SELECT @name = p.nombre
		FROM Pacientes p
		
		UPDATE Pacientes
		SET estado=0
		WHERE nombre = @name
=======
DROP trigger bajaPacientes

create trigger bajaPacientes
	on Pacientes
	instead of
	delete
AS
	begin
		DECLARE @name varchar(50)

		SELECT @name = p.nombre
		FROM Pacientes p
		
		UPDATE Pacientes
		SET estado=0
		WHERE nombre = @name
>>>>>>> 2abb850cb1593f76c0b40094e1fd0b26e3343b4c
	end