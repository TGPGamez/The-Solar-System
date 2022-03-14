CREATE PROCEDURE GetPlanetsFromCulture 
	@culture VARCHAR(6)
AS
	SELECT Planet.Name AS Search_Name, Planet_StringResources.Name, Planet_StringResources.ShortDescription, Planet_StringResources.StateOfMatter,
			Planet_Info.LengthFromSun, Planet_Info.Diameter, Planet_Info.TravelTimeAroundSun,
			Planet_Info.Temperature, Planet_Info.AtmosphericPressure, Planet_Info.NumberOfMoons
	FROM Planet
	JOIN Planet_INFO ON Planet_Info.Planet_ID = Planet.ID
	JOIN Languages_Planet ON Languages_Planet.Planet_ID = Planet.ID
	JOIN Planet_StringResources ON Planet_StringResources.ID = Languages_Planet.PSR_ID
	JOIN Languages ON Languages.ID = Languages_Planet.Language_ID
	WHERE Languages.Culture = @culture
GO


CREATE PROCEDURE GetPlanetFromCultureAndCultureName
	@culture VARCHAR(6),
	@planet_name VARCHAR(70)
AS
	SELECT Planet.Name AS Search_Name, Planet_StringResources.Name, Planet_StringResources.ShortDescription, Planet_StringResources.StateOfMatter,
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


CREATE PROCEDURE GetPlanetFromCultureAndName
	@culture VARCHAR(6),
	@planet_name VARCHAR(70)
AS
	SELECT Planet.Name AS Search_Name, Planet_StringResources.Name, Planet_StringResources.ShortDescription, Planet_StringResources.StateOfMatter,
			Planet_Info.LengthFromSun, Planet_Info.Diameter, Planet_Info.TravelTimeAroundSun,
			Planet_Info.Temperature, Planet_Info.AtmosphericPressure, Planet_Info.NumberOfMoons
	FROM Planet
	JOIN Planet_INFO ON Planet_Info.Planet_ID = Planet.ID
	JOIN Languages_Planet ON Languages_Planet.Planet_ID = Planet.ID
	JOIN Planet_StringResources ON Planet_StringResources.ID = Languages_Planet.PSR_ID
	JOIN Languages ON Languages.ID = Languages_Planet.Language_ID
	WHERE Languages.Culture = @culture
	AND Planet.Name = @planet_name
GO