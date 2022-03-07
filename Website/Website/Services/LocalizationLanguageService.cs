using Website.Data;
using Website.Models;

namespace Website.Services
{
    public class LocalizationLanguageService : ILocalizationLanguageService
    {
        private readonly Website_DbContext _context;

        public LocalizationLanguageService(Website_DbContext context)
        {
            _context = context;
        }
        public StringResource GetStringResource(string key, int languageId)
        {
            return _context.StringResources.FirstOrDefault(x =>
                    x.Name.Trim().ToLower() == key.Trim().ToLower()
                    && x.LanguageId == languageId);
        }
    }
}
