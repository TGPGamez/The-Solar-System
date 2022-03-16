using Website.Models;

namespace Website.Services
{
    public interface ILocalizationService
    {
        StringResource GetStringResource(string key, int languageId);
    }
}
