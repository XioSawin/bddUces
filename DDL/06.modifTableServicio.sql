ALTER TABLE Servicio
	ADD id int

UPDATE Servicio
	set id=1
	WHERE tipo='xr'

UPDATE Servicio
	set id=2
	WHERE tipo='er'

UPDATE Servicio
	set id=3
	WHERE tipo='ct'