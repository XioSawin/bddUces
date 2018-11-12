alter table HorariosRecurrent
	ADD estado bit

alter table HorariosRecurrent
	add default 1 for estado