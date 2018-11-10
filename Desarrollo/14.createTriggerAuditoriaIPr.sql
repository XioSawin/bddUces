CREATE TRIGGER trigAuditoriaIPr
on Profesional
AFTER
INSERT
	AS
	BEGIN
		INSERT INTO auditoria (cantidad_por_pagina, nro_pagina, tipo_actividad)
		values ((SELECT count (*) FROM INSERTED), 1, 'I')
	END
