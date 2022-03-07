using Website.Data;
using Website.Models;

namespace Website.Services
{
    public class LanguageService : ILanguageService
    {
        private readonly Website_DbContext _context;

        public LanguageService(Website_DbContext context)
        {
            _context = context;
        }

        public IEnumerable<Language> GetLanguages()
        {
            return _context.Languages.ToList();
        }

        public Language GetLanguageByCulture(string culture)
        {
            return _context.Languages.FirstOrDefault(x =>
                x.Culture.Trim().ToLower() == culture.Trim().ToLower());
        }
    }
}
