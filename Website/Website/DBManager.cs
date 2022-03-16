using System.Data.SqlClient;
using System.Data.SqlTypes;
using Website.Models;

namespace Website
{
    public class DBManager
    {
        private SqlConnection Connection;
        private readonly string connectionString = "Server=TOBIAS; Database=SolarSystemDB; Trusted_Connection=True; MultipleActiveResultSets=true";

        public DBManager()
        {
            Connection = new SqlConnection(connectionString);
        }


        public List<PlanetModel> GetPlanetsFromCulture(string culture)
        {
            List<PlanetModel> planets = new List<PlanetModel>();
            SqlCommand cmd = new SqlCommand("GetPlanetsFromCulture", Connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@culture", culture);
        
            Connection.Open();
            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                    PlanetModel planetModel = new PlanetModel();
                    planetModel.Search_Name = rdr.GetString(0);
                    planetModel.Name = rdr.GetString(1);
                    planetModel.ShortDescription = rdr.GetString(2);
                    planetModel.StateOfMatter = rdr.GetString(3);
                    planetModel.LengthFromSun = rdr.GetDecimal(4);
                    planetModel.Diameter = rdr.GetDouble(5);
                    planetModel.TravelTimeAroundSun = rdr.GetDouble(6);
                    planetModel.Temperature = rdr.GetDecimal(7);
                    SqlDecimal pressure = rdr.GetSqlDecimal(8);
                    if (!pressure.IsNull)
                    {
                        planetModel.AtmosphericPressure = pressure.Value;
                    }
                    planetModel.NumberOfMoons = rdr.GetInt32(9);
                    planets.Add(planetModel);
                }
            }
            Connection.Close();
            return planets;
        }
    }
}
