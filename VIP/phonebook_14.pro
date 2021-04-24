domains
	city, street = symbol.
	house,flat = integer.
	address = address(city, street, house, flat).
	surname, phone = symbol.
	brand, color = symbol.
	price = integer.
	bank, account = symbol.
	amount = integer.
predicates
	person(surname, phone, address).
	car(surname, brand, color, price).
	depositor(surname, bank, account, amount).
	infoByBrandAndColor(brand, color, surname, city, phone, bank).

	
clauses
	person("DKul", "89271939173", address("Saransk", "Kovalenko", 7, 89)).
	person("DKul", "89272030284", address("Saransk", "Kovalenko", 7, 89)).
	person("Gag", "89273141395", address("Moscow", "Kapotnoua", 19, 110)).
	person("Gag", "89222341333", address("Belgorod", "Smolenskaya", 29, 112)).
	person("Chalyy", "892722822832", address("Anadyr", "Morshovaya", 18, 322)).

	car("DKul", "Audi", "white", 4500000).
	car("DKul", "Audi", "black", 1500000).
	car("Gag", "BMW X6", "pink", 7500000).
	car("Gag", "Audi", "black", 1500000).
	car("Chalyy", "Bugatti", "gold", 7500000).
	car("Chalyy", "Lada Vesta", "white", 500000).

	depositor("DKul", "Sberbank", "11111", 1500).
	depositor("DKul", "Tinkoff", "22222", 3500).
	depositor("Gag", "Tinkoff", "22822", 7500).
	depositor("Chalyy", "SelhozBank", "33333", 500).


	infoByBrandAndColor(Brand, Color, Surname, City, Phone, Bank)
                                                      :- car(Surname, Brand, Color, _),
           person(Surname, Phone, address(City, _, _, _)),
           depositor(Surname, Bank, _ , _).

GOAL 
	%infoByBrandAndColor("Audi", "black", Surname, City, Phone, Bank).
	%infoByBrandAndColor ("Lada Vesta", "white", Surname, City, Phone, Bank).
	infoByBrandAndColor ("Lada Vesta", "red", Surname, City, Phone, Bank).