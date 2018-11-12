create procedure reservarTurno
	@id_servicio int,
	@fecha_inicio datetime

AS BEGIN
	update HorariosRecurrent
	set estado=0
	where @id_servicio=id_servicio_profesional AND @fecha_inicio = fecha_hora_inicio

	print 'El turno ha sido reservado'
end