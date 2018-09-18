<<<<<<< HEAD
DROP trigger bajaProfesional

create trigger bajaProfesional
	on Profesional
	instead of
	delete
AS
	begin
		DECLARE @name varchar(50)

		SELECT @name = p.nombre
		FROM Profesional p
		
		UPDATE Profesional
		SET estado=0
		WHERE nombre = @name
=======
DROP trigger bajaProfesional

create trigger bajaProfesional
	on Profesional
	instead of
	delete
AS
	begin
		DECLARE @name varchar(50)

		SELECT @name = p.nombre
		FROM Profesional p
		
		UPDATE Profesional
		SET estado=0
		WHERE nombre = @name
>>>>>>> 2abb850cb1593f76c0b40094e1fd0b26e3343b4c
	end