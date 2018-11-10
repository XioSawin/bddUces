

create trigger bajaServicio
	ON Servicio
	instead of
	delete
AS
	begin
		DECLARE @name varchar(50)

		SELECT @name = s.nombre
		FROM Servicio s

		INSERT INTO auditoria (cantidad_por_pagina, nro_pagina, tipo_actividad)
		values ((SELECT count (*) FROM DELETED), 1, 'D')
		
		UPDATE Servicio
		SET estado=0
		WHERE nombre = @name
	end


	