domains
 name, sex = symbol
 
predicates
 parent(name, sex, name).
 grands(name, name, name, name, name).
 
clauses 
 parent("Olga", "woman", "Andrey"). % Andrey`s mother is Tanya
 parent("Vera", "woman", "Olga"). % Olga`s mother is Vera
 parent("Tamara","woman", "Alexandr"). % Alexandr`s mother is Tamara
 parent("Alexandr", "man", "Andrey"). % Andrey`s father is Alexandr
 parent("Anatoly", "man", "Alexandr"). % Alexandr`s father is Anatoly
 parent("Grigory", "man", "Olga"). % Olga`s father is Grigory
 
 grands(Name, MotherGrandMa, MotherGrandPa, FatherGrandMa, FatherGrandPa):-
 parent(Mother, "woman", Name), 
 parent(MotherGrandMa, "woman", Mother),
 parent(MotherGrandPa, "man", Mother), 
 parent(Father,"man", Name),
 parent(FatherGrandMa,"woman", Father), 
 parent(FatherGrandPa,"man", Father).
goal
 %grands("Andrey", MotherGrandMa, _ , FatherGrandMa, _ ).
 %grands("Andrey", _ ,MotherGrandPa , _, FatherGrandPa).
 %grands("Andrey", MotherGrandMa, MotherGrandPa , FatherGrandMa, FatherGrandPa ).
 %grands("Andrey", MotherGrandMa, _, _, _).
 grands("Andrey", MotherGrandMa, MotherGrandPa , _, _).