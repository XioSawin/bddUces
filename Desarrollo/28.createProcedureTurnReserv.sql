create procedure turnosReservados
	@id_profesional int,
	@es_profesional bit,
	@fecha datetime
AS
BEGIN

	SELECT id_servicio_profesional, es_profesional, fecha_hora_inicio
	FROM HorariosRecurrent
	WHERE @id_profesional=id_servicio_profesional AND @es_profesional=es_profesional AND @fecha=fecha_hora_inicio AND estado=0

END