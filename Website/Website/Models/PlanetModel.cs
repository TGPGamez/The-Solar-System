namespace Website.Models
{
    public class PlanetModel
    {
        public string Search_Name { get; set; }
        public string Name { get; set; }
        public string ShortDescription { get; set; }
        public string StateOfMatter { get; set; }
        public decimal LengthFromSun { get; set; }
        public double Diameter { get; set; }
        public double TravelTimeAroundSun { get; set; }
        public decimal Temperature { get; set; }
        public decimal? AtmosphericPressure { get; set; }
        public int NumberOfMoons { get; set; }

        public PlanetModel(string search_name, string name, string shortDescription, string stateOfMatter,
                            decimal lengthFromSun, double diameter, double travelTimeAroundSun, decimal temperature,
                            decimal? atmosphericPressure, int numberOfMoons)
        {
            Search_Name = search_name;
            Name = name;
            ShortDescription = shortDescription;
            StateOfMatter = stateOfMatter;
            LengthFromSun = lengthFromSun;
            Diameter = diameter;
            TravelTimeAroundSun = travelTimeAroundSun;
            Temperature = temperature;
            AtmosphericPressure = atmosphericPressure;
            NumberOfMoons = numberOfMoons;
        }

        public PlanetModel(string search_name, string name, string shortDescription, string stateOfMatter,
                            decimal lengthFromSun, double diameter, double travelTimeAroundSun, decimal temperature,
                            int numberOfMoons)
        {
            Search_Name = search_name;
            Name = name;
            ShortDescription = shortDescription;
            StateOfMatter = stateOfMatter;
            LengthFromSun = lengthFromSun;
            Diameter = diameter;
            TravelTimeAroundSun = travelTimeAroundSun;
            Temperature = temperature;
            NumberOfMoons = numberOfMoons;
        }

        public PlanetModel()
        {

        }
    }
}
