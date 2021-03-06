drop procedure altaHorariosRecurr
go

CREATE PROCEDURE altaHorariosRecurr
        @id_servicio_profesional int,
        @es_profesional bit,
        @tipo_repeticion char(1),
        @cantidad_repeticiones int,
        @fecha_hora_inicio datetime,
        @fecha_hora_fin datetime
AS
BEGIN
        DECLARE @contador int
        SET @contador = 0


        WHILE (@contador != @cantidad_repeticiones)
                BEGIN 
                        IF (@tipo_repeticion = 'c')
                                INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
                                                                        VALUES (@id_servicio_profesional, @es_profesional, @tipo_repeticion, @cantidad_repeticiones, DATEADD(dd, @contador, @fecha_hora_inicio), DATEADD(dd, @contador, @fecha_hora_fin))
                        IF (@tipo_repeticion = 'l')
                                INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
                                                                        VALUES (@id_servicio_profesional, @es_profesional, @tipo_repeticion, @cantidad_repeticiones, dbo.ADDWKDAYS(@fecha_hora_inicio, @contador), dbo.ADDWKDAYS(@fecha_hora_fin, @contador))
                                
                        IF (@tipo_repeticion = 's')
                                INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
                                                                        VALUES (@id_servicio_profesional, @es_profesional, @tipo_repeticion, @cantidad_repeticiones, DATEADD(wk, @contador, @fecha_hora_inicio), DATEADD(wk, @contador, @fecha_hora_fin))


                        IF (@tipo_repeticion = 'm')
                                INSERT INTO HorariosRecurrent (id_servicio_profesional, es_profesional, tipo_repeticion, cantidad_repeticiones, fecha_hora_inicio, fecha_hora_fin)
                                                                        VALUES (@id_servicio_profesional, @es_profesional, @tipo_repeticion, @cantidad_repeticiones, DATEADD(mm, @contador, @fecha_hora_inicio), DATEADD(mm, @contador, @fecha_hora_fin))


                        SET @contador = @contador+1
                END
                PRINT 'Se han dado de alta los horarios recurrentes'
END
