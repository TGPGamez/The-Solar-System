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


INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mercury', 'This is $name and is a $stateOfMatter planet, 
it is roughly $diameter kilometers in diameter and is a quite hot ($temperature degress Fahrenheit)', 'Terrestrial');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Venus', 'This is $name and is a $stateOfMatter planet,
it is roughly $diameter kilometers in diameter and its very, very hot planet ($temperature degrees Fahrenheit).', 'Terrestrial');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Earth', 'This is $name and it is a very nice, roundy planet, there is lot of life on it, the diameter is roughly $diameter kilometers in 
diameter and the temperature is $temperature Fahrenheit.', 'Terrestrial');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mars', 'This is $name and it is roughly $diameter kilometers in diameter and its very cold planet ($temperature degress Fahrenheit). 
$name is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere and also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.', 'Terrestrial');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Jupiter', 'This is $name and it is roughly $diameter kilometers in diameter and very cold planet ($temperature degress Fahrenheit).
$name is called a $stateOfMatter planet. Its atmosphere is made up of mostly hydrogen gas and helium gas, like the sun. The planet is covered in thick red, brown, yellow and white clouds.
The clouds make the planet look like it has stripes. One of $name''s most famous features is the Great Red Spot.', 'Gas Giant');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Saturn', 'This is $name and is a $stateOfMatter planet made up mostly of hydrogen and helium. ($temperature degress Fahrenheit)
$name''s volume is 76x bigger than Earth, and it is the second most massive planet in the solar system.
The Ringed Planet is the least dense of all the planets, and is the only one less dense than water.', 'Gas Giant');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Uranus', 'This is $name and is the seventh planet from the Sun, and has the third-largest diameter ($diameter kilometers) in our solar system
and is $temperature degress Fahrenheit.', 'Gas Giant');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Neptune', 'This is $name and its like like Uranus, is an ice giant. It''s similar to a $stateOfMatter.
It is made of a thick soup of water, ammonia, and methane flowing over a solid core about the size of Earth. 
$name has a thick windy atmosphere. It''s also a really cold planet ($temperature degress Fahrenheit).', 'Gas Giant');

INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Merkur', 'Dette er $name og er en $stateOfMatter planet, 
der lige omtrent er $diameter kilometer i diameter og som desuden er rimelig varm ($temperature grader Fahrenheit).', 'Terrestrisk');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Venus', 'Dette er $name og er en $stateOfMatter planet,
der lige omtrent er $diameter kilometer i diameter og er mega varm ($temperature grader Fahrenheit).', 'Terrestrisk');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Jorden', 'Dette er $name og er vores lille hyggelige hjem, der er en masse liv og mange forskellige livsformer, vores hjem er omkring $diameter kilometer i diameter 
og har en temperatur på cirka $temperature grader Fahrenheit.', 'Terrestrisk');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mars', 'Dette er $name og er ca $diameter kilometer i diameter og er en meget kold planet ($temperature grader Fahrenheit).
​$name er den fjerde planet fra solen – er en støvet, kold, ørken verden med en meget tynd atmosfære og
også en dynamisk planet med årstider, polare iskapper, kløfter, uddøde vulkaner og beviser på, at den var endnu mere aktiv i fortiden.', 'Terrestrisk');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Jupiter', 'Dette er $name, og det er omtrent $diameter kilometer i diameter og meget kold planet ($temperature grader Fahrenheit).
$name kaldes en $stateOfMatter planet. Dens atmosfære består hovedsagelig af brintgas og heliumgas, ligesom solen. Planeten er dækket af tykke røde, brune, gule og hvide skyer.
Skyerne får planeten til at se ud som om den har striber. En af $name mest berømte funktioner er den Store Røde Plet.', 'Gaskæmpe');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Saturn', 'Dette er $name og er en $stateOfMatter planet, der hovedsageligt består af brint og helium. ($temperature grader Fahrenheit)
$name''s volume er 76 gange større end Jordens, og det er den næstmest massive planet i solsystemet.
Den Ringede Planet er den mindst tætte af alle planeter og er den eneste mindre tæt end vand.', 'Gaskæmpe');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Uranus', 'Dette er $name og er den syvende planet fra Solen og har den tredjestørste diameter ($diameter kilometer) i vores solsystem
og er $stateOfMatter planeten, der er den koldeste planet i vores solsystem ($temperature grader Fahrenheit).', 'Gaskæmpe');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Neptun', 'Dette er $name og er en isgigant. Det ligesom en $stateOfMatter og ligner Uranus.
Den er lavet af en tyk suppe af vand, ammoniak og metan, der flyder over en fast kerne på størrelse med Jorden.
$name har en tyk blæsende atmosfære. Det er også en rigtig kold planet ($temperature grader Fahrenheit).', 'Gaskæmpe');

INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Merkúr', 'Ez a $name, ez egy $stateOfMatter bolygó,
nagyjából $diameter kilóméter az átmérője, és elég forró van arra ($temperature Fahrenheit-fok)', 'Föld tipusú');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Vénusz', 'Ez a $name, ez egy $stateOfMatter bolygó,
nagyjából $diameter kilóméter az átmérője, és nagyon, nagyon meleg van arra ($temperature Fahrenheit-fok)', 'Föld tipusú');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Föld', 'Ez a $name, és egy nagyon szép, kerek bolygó, sokféle faj van rajta, az átmérője nagyjából $diameter kilóméter, 
a hőmérséklete $temperature Fahrenheit-fok.', 'Föld tipusú');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Mars', 'Ez a $name, és nagyjából $diameter kilóméter az átmérője, és egy nagyon hideg bolygó ($temperature Fahrenheit-fok). 
A $name a negyedik bolygó a Naptól - egy poros, hideg, sivatagos világ nagyon vékony légkörrel, és egy sokszor változó bolygó évszakokkal, 
sarkköri jégsapkákkal, kanyonokkal, kialudt vulkánokkal, és bizonyítékokkal arról, hogy a múltban ezek a vulkánok aktívak voltak.', 'Föld tipusú');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Jupiter', 'Ez a $name és nagyjából $diameter kilométer átmérőjű és egy nagyon hideg bolygó ($temperature Fahrenheit)
A $name egy $stateOfMatter típusú bolygó. Az atmoszférája többségében hidrogénből és héliumból van, ugyan úgy mint a nap. A bolygót piros, barna, sárga és fehér felhők fedik be.
A felhők miatt úgy néz ki a bolygó mintha csíkokkal lenne tele. A $name leghíresebb látványossága  a Nagy Vörös Folt.', 'Gázóriás');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Szaturnusz', 'Ez a $name és ez egy $stateOfMatter bolygó, ami nagyrészt hidrogénből és héliumból épül fel (hőmérséklete $temperature Fahrenheit-fok). 
A $name térfogata 76-szor nagyobb, mint a Föld, és ez a második legnagyobb bolygó a Naprendszerben. A Gyűrűs Bolygónak van a legkisebb 
sűrűsége az összes bolygó közül, ez az egyetlen, aminek sűrűsége kisebb, mint a víznek.', 'Gázóriás');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Uránusz', 'Ez a $name és ez a hetedik bolygó a Naptól, és neki van a harmadik legnagyobb átmérője a Naprendszerünkben ($diameter kilóméter). 
Ez egy $stateOfMatter bolygó, ami a leghidegebb bolygó a Naprendszerünkben ($temperature Fehrenheit-fok).', 'Gázóriás');
INSERT INTO Planet_StringResources(Name, ShortDescription, StateOfMatter) VALUES('Neptunusz', 'Ez a $name , hasonlóan az Uranushoz, ez egy jég óriás. Ez hasonló a $stateOfMatter-hez/höz/hoz. Ez egy vastag levesnyi vízből áll, 
ammónia és metán áramlik a szilárd mag körül, aminek nagysága a Földéhez hasonló. A $name-nak vastag, viharos légköre van. 
Ez is egy hideg bolygó ($temperature Fahrenheit-fok).', 'Gázóriás');

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

