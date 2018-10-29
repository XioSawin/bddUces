create table HorariosDisponib (
	id_servicio_profesional int identity(1,1),
	es_profesional bit,
	fecha_hora_inicio datetime,
	fecha_hora_fin datetime
)
