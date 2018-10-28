create procedure altaHorariosRecurr
	@id_servicio_profesional int, @es_profesional bit, @tipo_repeticion char (1), @cantidad_repeticiones int, @fecha_hora_inicio datetime, @fecha_hora_fin datetime
AS
	BEGIN
		INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin) values (@id_servicio_profesional, @es_profesional, @tipo_repeticion, @cantidad_repeticiones, @fecha_hora_inicio, @fecha_hora_fin)
	END
