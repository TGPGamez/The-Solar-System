INSERT INTO Languages(Culture, Name) VALUES('da-dk', 'Dansk');
INSERT INTO Languages(Culture, Name) VALUES('en-us', 'English');
INSERT INTO Languages(Culture, Name) VALUES('hu', 'Hungarian');



INSERT INTO StringResources(Language_ID, Name, Value) VALUES(1, 'SolarSystem.Language.Title', 'Vælg et sprog!');
INSERT INTO StringResources(Language_ID, Name, Value) VALUES(2, 'SolarSystem.Language.Title', 'Please select another language!');
INSERT INTO StringResources(Language_ID, Name, Value) VALUES(3, 'SolarSystem.Language.Title', 'Kérlek válassz egy másik nyelvet!');
INSERT INTO StringResources(Language_ID, Name, Value) VALUES(1, 'SolarSystem.Language.ChangeTitle', 'Skift sprog');
INSERT INTO StringResources(Language_ID, Name, Value) VALUES(2, 'SolarSystem.Language.ChangeTitle', 'Change my language');
INSERT INTO StringResources(Language_ID, Name, Value) VALUES(3, 'SolarSystem.Language.ChangeTitle', 'Változtasd meg a nyelvet');

INSERT INTO Planet(Name, ImagePath) VALUES('Mercury', 'photos\mercury.png');
INSERT INTO Planet(Name, ImagePath) VALUES('Venus', 'photos\venus.png');
INSERT INTO Planet(Name, ImagePath) VALUES('Earth', 'photos\earth.png');
INSERT INTO Planet(Name, ImagePath) VALUES('Mars', 'photos\mars.png');
INSERT INTO Planet(Name, ImagePath) VALUES('Jupiter', 'photos\jupiter.png');
INSERT INTO Planet(Name, ImagePath) VALUES('Saturn', 'photos\saturn.png');
INSERT INTO Planet(Name, ImagePath) VALUES('Uranus', 'photos\uranus.png');
INSERT INTO Planet(Name, ImagePath) VALUES('Neptune', 'photos\neptune.png');


--Mercury
INSERT INTO Planet_Info(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons) 
VALUES(1, 36, 3032, 88.0, 333, 0, 0);
--Venus
INSERT INTO Planet_Info(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons) 
VALUES(2, 67.2, 7521, 224.8, 867, 91, 0);
--Earth
INSERT INTO Planet_Info(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons) 
VALUES(3, 93, 7926, 365.2, 59, 1, 1);
--Mars
INSERT INTO Planet_Info(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons) 
VALUES(4, 141.6, 4221, 698.0, -85, 0.01, 2);
--Jupiter
INSERT INTO Planet_Info(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons) 
VALUES(5, 483.7, 88846, 4331, -166, null, 79);
--Saturn
INSERT INTO Planet_Info(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons) 
VALUES(6, 889.8, 74897, 10747, -220, null, 82);
--Uranus
INSERT INTO Planet_Info(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons) 
VALUES(7, 1781.5, 31763, 30589, -320, null, 27);
--Neptune
INSERT INTO Planet_Info(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons) 
VALUES(8, 2805.5, 30775, 59800, -330, null, 14);


INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mercury', 'This is {0} and is a {1} planet', 'Terrestrial');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Venus', 'This is {0} and is a {1} planet', 'Terrestrial');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Earth', 'This is {0} and is a {1} planet', 'Terrestrial');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mars', 'This is {0} and is a {1} planet', 'Terrestrial');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Jupiter', 'This is {0} and is a {1} planet', 'Gas Giant');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Saturn', 'This is {0} and is a {1} planet', 'Gas Giant');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Uranus', 'This is {0} and is a {1} planet', 'Gas Giant');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Neptune', 'This is {0} and is a {1} planet', 'Gas Giant');

INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Merkur', 'Dette er {0} og er en {1} planet', 'Terrestrisk');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Venus', 'Dette er {0} og er en {1} planet', 'Terrestrisk');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Jorden', 'Dette er {0} og er en {1} planet', 'Terrestrisk');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mars', 'Dette er {0} og er en {1} planet', 'Terrestrisk');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Jupiter', 'Dette er {0} og er en {1} planet', 'Gaskæmpe');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Saturn', 'Dette er {0} og er en {1} planet', 'Gaskæmpe');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Uranus', 'Dette er {0} og er en {1} planet', 'Gaskæmpe');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Neptun', 'Dette er {0} og er en {1} planet', 'Gaskæmpe');

INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Merkúr', 'Ez a {0} és ez egy {1} bolygó', 'Föld tipusú');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Vénusz', 'Ez a {0} és ez egy {1} bolygó', 'Föld tipusú');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Föld', 'Ez a {0} és ez egy {1} bolygó', 'Föld tipusú');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mars', 'Ez a {0} és ez egy {1} bolygó', 'Föld tipusú');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Jupiter', 'Ez a {0} és ez egy {1}', 'Gázóriás');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Szaturnusz', 'Ez a {0} és ez egy {1}', 'Gázóriás');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Uránusz', 'Ez az {0} és ez egy {1}', 'Gázóriás');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Neptunusz', 'Ez a {0} és ez egy {1}', 'Gázóriás');

--For language: en-us
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(2, 1, 1);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(2, 2, 2);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(2, 3, 3);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(2, 4, 4);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(2, 5, 5);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(2, 6, 6);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(2, 7, 7);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(2, 8, 8);

--For language: da-dk
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(1, 1, 9);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(1, 2, 10);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(1, 3, 11);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(1, 4, 12);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(1, 5, 13);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(1, 6, 14);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(1, 7, 15);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(1, 8, 16);

--For language: hu
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(3, 1, 17);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(3, 2, 18);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(3, 3, 19);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(3, 4, 20);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(3, 5, 21);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(3, 6, 22);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(3, 7, 23);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID)
VALUES(3, 8, 24);

