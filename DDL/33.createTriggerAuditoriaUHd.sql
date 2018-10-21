
CREATE TRIGGER trigAuditoriaUHd
on HorariosDisponib
AFTER
UPDATE
	AS
	BEGIN
		INSERT INTO auditoria (cantidad_por_pagina, nro_pagina, tipo_actividad)
		values ((SELECT count (*) FROM INSERTED), 1, 'U')
	END








