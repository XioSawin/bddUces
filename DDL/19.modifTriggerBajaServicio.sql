<<<<<<< HEAD
DROP trigger bajaServicio

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
=======
DROP trigger bajaServicio

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
>>>>>>> 2abb850cb1593f76c0b40094e1fd0b26e3343b4c
	end