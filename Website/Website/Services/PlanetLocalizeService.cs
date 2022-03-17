using Website.Data;
using Website.Models;

namespace Website.Services
{
    public class PlanetLocalizeService : IPlanetService
    {
        private readonly ContextDB _context;

        public PlanetLocalizeService(ContextDB context)
        {
            _context = context;
        }

        public PlanetModel GetPlanetModel(string search_name, int languageId)
        {
            return _context.PlanetInDatabase.FirstOrDefault(x =>
                    x.Search_Name.Trim().ToLower() == search_name.Trim().ToLower()
                    && x.LanguageID == languageId);
        }
    }
}
