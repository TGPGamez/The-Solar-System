INSERT INTO Languages(Culture, Name) VALUES('da-dk', 'Dansk');
INSERT INTO Languages(Culture, Name) VALUES('en-us', 'English');
INSERT INTO Languages(Culture, Name) VALUES('hu', 'Hungarian');

INSERT INTO StringResources(Language_ID, Name, Value) VALUES(1, 'page.title', 'Solsystemet');
INSERT INTO StringResources(Language_ID, Name, Value) VALUES(2, 'page.title', 'The Solar System');
INSERT INTO StringResources(Language_ID, Name, Value) VALUES(3, 'page.title', 'A Naprendszer');

INSERT INTO Planet(Name, ImagePath) VALUES('Earth', 'photos\earth.png');
INSERT INTO Planet(Name, ImagePath) VALUES('Saturn', 'photos\saturn.png');
INSERT INTO Planet(Name, ImagePath) VALUES('Mars', 'photos\mars.png');

INSERT INTO Planet_INFO(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons)
VALUES(1, 12301, 214, 1267, 12, 125, 4124);
INSERT INTO Planet_INFO(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons)
VALUES(2, 22301, 314, 4267, 22, 325, 41524);
INSERT INTO Planet_INFO(Planet_ID, LengthFromSun, Diameter, TravelTimeAroundSun, Temperature, AtmosphericPressure, NumberOfMoons)
VALUES(3, 32301, 314, 4267, 132, 225, 41124);

INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Jorden', 'Dette er en test', 'Solid');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Saturn', 'Dette er en test2', 'Gas');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mars', 'Dette er en test3', 'Solid');

INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Earth', 'This is a test', 'Solid');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Saturn', 'This is a test2', 'Gas');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mars', 'This is a test3', 'Solid');

INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Föld', 'Ez egy teszt', 'Szilárd');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Szaturnusz', 'Ez egy teszt2', 'Gáz');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mars', 'Ez egy teszt3', 'Szilárd');

INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID) VALUES(1, 1, 1);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID) VALUES(1, 2, 2);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID) VALUES(1, 3, 3);

INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID) VALUES(2, 1, 4);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID) VALUES(2, 2, 5);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID) VALUES(2, 3, 6);

INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID) VALUES(3, 1, 7);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID) VALUES(3, 2, 8);
INSERT INTO Languages_Planet(Language_ID, Planet_ID, PSR_ID) VALUES(3, 3, 9);




SELECT Planet_StringResources.Name FROM Planet
JOIN Planet_INFO ON Planet_Info.Planet_ID = Planet.ID
JOIN Languages_Planet ON Languages_Planet.Planet_ID = Planet.ID
JOIN Planet_StringResources ON Planet_StringResources.ID = Languages_Planet.PSR_ID
JOIN Languages ON Languages.ID = Languages_Planet.Language_ID
WHERE Languages.Culture = 'da-dk'
