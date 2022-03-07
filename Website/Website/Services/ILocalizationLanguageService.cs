using Website.Models;

namespace Website.Services
{
    public interface ILocalizationLanguageService
    {
        StringResource GetStringResource(string key, int languageId);
    }
}
