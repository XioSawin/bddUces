/*

CREATE TRIGGER altaHorariosRecurr
ON HorariosRecurrent
INSTEAD OF
INSERT

AS

DECLARE cantRepeticiones CURSOR FOR
	SELECT cantidad_repeticiones
	FROM HorariosRecurrent

DECLARE tipoRepeticiones CURSOR FOR
	SELECT tipo_repeticion
	FROM HorariosRecurrent

DECLARE @cant_Repet int, @tipo_Repet char(1)


BEGIN
	OPEN cantRepeticiones
	FETCH NEXT FROM cantRepeticiones
	INTO @cant_Repet
	WHILE @@FETCH_STATUS=0

	OPEN tipoRepeticiones
	FETCH NEXT FROM tipoRepeticiones
	INTO @tipo_Repet
	WHILE @@FETCH_STATUS=0

	INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
	SELECT id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, DATEADD(dd, @cant_Repet, fecha_hora_inicio), DATEADD(dd, @cant_Repet, fecha_hora_fin)
	FROM INSERTED
	WHILE @tipo_Repet = 'c'
	
	INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
	SELECT id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, DATEADD(dw, @cant_Repet, fecha_hora_inicio), DATEADD(dw, @cant_Repet, fecha_hora_fin)
	FROM INSERTED
	WHILE @tipo_Repet = 'l'

	INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
	SELECT id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, DATEADD(ww, @cant_Repet, fecha_hora_inicio), DATEADD(ww, @cant_Repet, fecha_hora_fin)
	FROM INSERTED
	WHILE @tipo_Repet = 's'

	INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
	SELECT id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, DATEADD(mm, @cant_Repet, fecha_hora_inicio), DATEADD(mm, @cant_Repet, fecha_hora_fin)
	FROM INSERTED
	WHILE @tipo_Repet = 'm'

	FETCH NEXT FROM tipoRepeticiones INTO @tipo_Repet
	FETCH NEXT FROM cantRepeticiones INTO @cant_Repet

END
CLOSE tipoRepeticiones
DEALLOCATE tipoRepeticiones
CLOSE cantRepeticiones
DEALLOCATE cantRepeticiones*/

/*TEST*/
INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
SELECT hd.id_servicio_profesional, hd.es_profesional, 'c', 3, hd.fecha_hora_inicio, hd.fecha_hora_fin
FROM HorariosDisponib hd 