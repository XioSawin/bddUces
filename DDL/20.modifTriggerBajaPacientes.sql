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
	end