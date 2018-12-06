

create trigger bajaPacientes
	on Pacientes
	instead of
	delete
AS
	begin
		DECLARE @name varchar(50)

		SELECT @name = p.nombre
		FROM Pacientes p
		
		INSERT INTO auditoria (cantidad_por_pagina, nro_pagina, tipo_actividad)
		values ((SELECT count (*) FROM DELETED), 1, 'D')
		
		UPDATE Pacientes
		SET estado=0
		WHERE nombre = @name
	end
