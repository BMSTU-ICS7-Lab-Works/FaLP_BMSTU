domains
	name, surname, group, university = symbol.
predicates
	study(name, surname, group, university).
	getUnisOfStudent(Name, Surname, University)
clauses
	study("Andrey", "Chalyy", "IU7-62B", "BMSTU").
	study("Nikita", "Gag", "IU7-62B", "BMSTU").
	study("D", "Kul", "IU7-62B", "BMSTU").
	study("Ilya", "Balachiy", "FFO-32", "TGNK").
	study("Maxim", "Drevo", "FIN-11", "MGGU").
	study("D", "Kul", "IO-23",  "MSU").
	getUnisOfStudent (N, S, U) :- study(N, S, _, U).
GOAL 
	%study(Name, Surname, Group, "BMSTU"), nl.
	%study("D", "Kul", Group, University), nl.
	getUnisOfStudent("D", "Kul", University).