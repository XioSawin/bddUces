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
		SET id=0
		WHERE nombre = @name
	end