create procedure altaHorariosDispo
	@id_servicio_profesional int, @es_profesional bit, @fecha_hora_inicio datetime, @fecha_hora_fin datetime
AS
	BEGIN
		INSERT INTO HorariosDisponib (id_servicio_profesional, es_profesional, fecha_hora_inicio, fecha_hora_fin) values (@id_servicio_profesional, @es_profesional, @fecha_hora_inicio, @fecha_hora_fin)
	END