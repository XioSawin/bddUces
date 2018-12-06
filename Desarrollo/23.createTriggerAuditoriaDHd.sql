
CREATE TRIGGER trigAuditoriaDHd
on HorariosDisponib
FOR
DELETE
	AS
	BEGIN
		INSERT INTO auditoria (cantidad_por_pagina, nro_pagina, tipo_actividad, fecha)
		values ((SELECT count (*) FROM DELETED), 1, 'D', getdate())
	END













