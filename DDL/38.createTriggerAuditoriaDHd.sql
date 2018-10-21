
CREATE TRIGGER trigAuditoriaDHd
on HorariosDisponib
AFTER
DELETE
	AS
	BEGIN
		INSERT INTO auditoria (cantidad_por_pagina, nro_pagina, tipo_actividad)
		values ((SELECT count (*) FROM DELETED), 1, 'D')
	END













