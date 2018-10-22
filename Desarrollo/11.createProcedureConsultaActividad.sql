CREATE PROCEDURE consultaActividad
AS
BEGIN
	SELECT a.id, a.cantidad_por_pagina, a.nro_pagina, a.tipo_actividad
	FROM auditoria a
END	














