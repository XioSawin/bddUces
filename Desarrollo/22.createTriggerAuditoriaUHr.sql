CREATE TRIGGER trigAuditoriaUHr
on HorariosRecurrent
AFTER
UPDATE
	AS
	BEGIN
		INSERT INTO auditoria (cantidad_por_pagina, nro_pagina, tipo_actividad, fecha)
		values ((SELECT count (*) FROM INSERTED), 1, 'U', getdate())
	END









