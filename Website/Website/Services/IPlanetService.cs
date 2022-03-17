using Website.Models;

namespace Website.Services
{
    public interface IPlanetService
    {
        PlanetModel GetPlanetModel(string search_name, int languageId);
    }
}
