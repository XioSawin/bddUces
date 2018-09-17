insert into HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin) 
	SELECT h.id_servicio_profesional, h.es_profesional, 'c', 4, h.fecha_hora_inicio, h.fecha_hora_fin
	FROM HorariosDisponib h