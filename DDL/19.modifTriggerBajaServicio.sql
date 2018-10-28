create trigger bajaServicio
	ON Servicio
	instead of
	delete
AS
	begin
		DECLARE @name varchar(50)

		SELECT @name = s.nombre
		FROM Servicio s
		
		UPDATE Servicio
		SET estado=0
		WHERE nombre = @name
	end