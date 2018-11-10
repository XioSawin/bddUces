CREATE PROCEDURE consulta_usuario
	@usuario varchar(50),
	@filas_por_pag int,
	@num_pag int

	AS BEGIN
		SELECT id, nombre_usuario, tipo_actividad
		FROM Auditoria
		WHERE nombre_usuario = @usuario AND id <= @filas_por_pag*@num_pag AND id > (@num_pag-1)*@filas_por_pag
	END













