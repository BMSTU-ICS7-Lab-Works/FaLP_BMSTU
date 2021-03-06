domains
 lname, phone, city, street = symbol.
 building_n, apartment, amount = integer.
 model, color, bank, account = symbol.
 address = address(city, street, building_n, apartment).
 
 cost, size = integer.
 property = 
 building(cost, size); 
 sector(cost, size); 
 ship(cost, color); 
 car(model, color, cost).
 
predicates
 phone_book(lname, phone, address).
 investors(lname, bank, account, amount).
 own(lname, property).
 own_type(lname, symbol, cost).
 own_cost(lname, symbol, cost).
 total_cost(lname, cost).
 
clauses
 phone_book("Chalyy", "+123", address("Moscow", "Postal", 1, 2)).
 phone_book("Chalyy", "+000", address("SPB", "Neva", 2, 4)).
 phone_book("Gag", "+345", address("Sevastopol", "Anotherstrt", 4, 8)).
 phone_book("Dkul", "+333", address("Moscow", "Postal", 8, 16)).
 
 investors("Chalyy", "RNCB", private, 999999999).
 investors("Dkul", "Sberbank", public, 10).
 investors("Gag", "Raiffeisen", public, 10000).
 
 own("Chalyy", building(12000, 40)).
 own("Chalyy", car("Audi", black, 150)).
 own("Gag", ship(1000, grey)).
 

 own_type(Lname, building, Cost) :- own(Lname,  building(Cost, _)).
 own_type(Lname, sector, Cost) :- own(Lname,  sector(Cost, _)).
 own_type(Lname, ship, Cost) :- own(Lname,  ship(Cost, _)). 
 own_type(Lname, car, Cost) :- own(Lname,  car(_, _, Cost)).
 
goal
 own_type("Chalyy", PropType, Cost).