CREATE TABLE Languages(
	ID INTEGER IDENTITY(1,1),
	Culture VARCHAR(6) NOT NULL,
	Name VARCHAR(60) NOT NULL,

	PRIMARY KEY(ID)
);

CREATE TABLE StringResources(
	ID INTEGER IDENTITY(1,1),
	Language_ID INTEGER NOT NULL,
	Name VARCHAR(80) NOT NULL,
	Value TEXT DEFAULT 'N/A',

	PRIMARY KEY(ID),
	FOREIGN KEY(Language_ID) REFERENCES Languages(ID)
);



CREATE TABLE Planet(
	ID INTEGER IDENTITY(1,1),
	Name VARCHAR(70) NOT NULL,
	ImagePath VARCHAR(MAX),

	PRIMARY KEY(ID)
);

CREATE TABLE Planet_StringResources(
	ID INTEGER IDENTITY(1,1) NOT NULL,
	Name VARCHAR(70) NOT NULL DEFAULT 'N/A',
	ShortDescription VARCHAR(MAX),
	StateOfMatter VARCHAR(30),
	
	PRIMARY KEY(ID)
);

CREATE TABLE Languages_Planet(
	Language_ID INTEGER NOT NULL,
	Planet_ID INTEGER NOT NULL,
	PSR_ID INTEGER UNIQUE,

	PRIMARY KEY(Language_ID, Planet_ID),
	FOREIGN KEY(Language_ID) REFERENCES Languages(ID),
	FOREIGN KEY(Planet_ID) REFERENCES Planet(ID),
	FOREIGN KEY(PSR_ID) REFERENCES Planet_StringResources(ID)
);

CREATE TABLE Planet_Info(
	Planet_ID INTEGER NOT NULL,
	LengthFromSun DECIMAL DEFAULT 0,
	ShortDescription VARCHAR(MAX) DEFAULT 'N/A',
	StateOfMatter VARCHAR(30) DEFAULT 'N/A',
	Diameter FLOAT DEFAULT 0,
	TravelTimeAroundSun FLOAT DEFAULT 0,
	Temperature DECIMAL DEFAULT 0,
	AtmosphericPressure DECIMAL DEFAULT null,
	NumberOfMoons INTEGER DEFAULT 0,

	PRIMARY KEY(Planet_ID),
	FOREIGN KEY(Planet_ID) REFERENCES Planet(ID)
);


CREATE PROCEDURE GetPlanetsFromCulture 
	@culture VARCHAR(6)
AS
	SELECT Planet_StringResources.Name, Planet_StringResources.ShortDescription, Planet_StringResources.StateOfMatter,
			Planet_Info.LengthFromSun, Planet_Info.Diameter, Planet_Info.TravelTimeAroundSun,
			Planet_Info.Temperature, Planet_Info.AtmosphericPressure, Planet_Info.NumberOfMoons
	FROM Planet
	JOIN Planet_INFO ON Planet_Info.Planet_ID = Planet.ID
	JOIN Languages_Planet ON Languages_Planet.Planet_ID = Planet.ID
	JOIN Planet_StringResources ON Planet_StringResources.ID = Languages_Planet.PSR_ID
	JOIN Languages ON Languages.ID = Languages_Planet.Language_ID
	WHERE Languages.Culture = @culture
GO


CREATE PROCEDURE GetPlanetFromCulture 
	@culture VARCHAR(6),
	@planet_name VARCHAR(70)
AS
	SELECT Planet_StringResources.Name, Planet_StringResources.ShortDescription, Planet_StringResources.StateOfMatter,
			Planet_Info.LengthFromSun, Planet_Info.Diameter, Planet_Info.TravelTimeAroundSun,
			Planet_Info.Temperature, Planet_Info.AtmosphericPressure, Planet_Info.NumberOfMoons
	FROM Planet
	JOIN Planet_INFO ON Planet_Info.Planet_ID = Planet.ID
	JOIN Languages_Planet ON Languages_Planet.Planet_ID = Planet.ID
	JOIN Planet_StringResources ON Planet_StringResources.ID = Languages_Planet.PSR_ID
	JOIN Languages ON Languages.ID = Languages_Planet.Language_ID
	WHERE Languages.Culture = @culture
	AND Planet_StringResources.Name = @planet_name
GO