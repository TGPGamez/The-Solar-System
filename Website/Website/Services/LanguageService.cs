using Website.Data;
using Website.Models;

namespace Website.Services
{
    public class LanguageService : ILanguageService
    {
        private readonly ContextDB _contextDB;
        public LanguageService(ContextDB context)
        {
            _contextDB = context;
        }

        public Language GetLanguageByCulture(string culture)
        {
            return _contextDB.Languages.FirstOrDefault(l => 
                l.Culture.Trim().ToLower() == culture.Trim().ToLower());
        }

        public IEnumerable<Language> GetLanguages()
        {
            return _contextDB.Languages.ToList();
        }
    }
}
