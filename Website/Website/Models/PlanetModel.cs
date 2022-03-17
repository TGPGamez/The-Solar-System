namespace Website.Models
{
    public class PlanetModel
    {
        public int LanguageID { get; set; }
        public string Search_Name { get; set; }
        public Planet General { get; set; }
        public PlanetInfo Info { get; set; }

        public PlanetModel()
        {
            General = new Planet();
            Info = new PlanetInfo();
        }
    }
}
