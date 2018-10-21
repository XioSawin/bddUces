create table auditoria (
	id int NOT NULL DEFAULT USER_ID(),
	nombre_usuario varchar (50) DEFAULT SYSTEM_USER,
	cantidad_por_pagina int, 
	nro_pagina int,
	tipo_actividad char(1)
)














