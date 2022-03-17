using Website.Data;
using Website.Models;

namespace Website.Services
{
    public class LocalizationService : ILocalizationService
    {
        private readonly ContextDB _context;

        public LocalizationService(ContextDB context)
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
