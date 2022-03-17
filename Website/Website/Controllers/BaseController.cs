using Microsoft.AspNetCore.Html;
using Microsoft.AspNetCore.Mvc;
using Website.Models;
using Website.Services;

namespace Website.Controllers
{
    public class BaseController : Controller
    {
        private readonly ILanguageService _languageService;
        private readonly ILocalizationService _localizationService;
        private readonly IPlanetService _planetService;

        public BaseController(ILanguageService languageService, ILocalizationService localizationService, IPlanetService planetService)
        {
            _languageService = languageService;
            _localizationService = localizationService;
            _planetService = planetService;
        }

        public HtmlString Localize(string resourceKey, params object[] args)
        {
            var currentCulture = Thread.CurrentThread.CurrentUICulture.Name;

            var language = _languageService.GetLanguageByCulture(currentCulture);
            if (language != null)
            {
                var stringResource = _localizationService.GetStringResource(resourceKey, language.Id);
                if (stringResource == null || string.IsNullOrEmpty(stringResource.Value))
                {
                    return new HtmlString(resourceKey);
                }

                return new HtmlString((args == null || args.Length == 0)
                    ? stringResource.Value
                    : string.Format(stringResource.Value, args));
            }

            return new HtmlString(resourceKey);
        }

        public HtmlString LocalizePlanetName(string resourceKey, params object[] args)
        {
            var currentCulture = Thread.CurrentThread.CurrentUICulture.Name;

            var language = _languageService.GetLanguageByCulture(currentCulture);
            if (language != null)
            {
                PlanetModel planetModel = _planetService.GetPlanetModel(resourceKey, language.Id);
                if (planetModel == null)
                {
                    return new HtmlString(resourceKey);
                }

                return new HtmlString((args == null || args.Length == 0)
                    ? planetModel.General.Name
                    : string.Format(planetModel.General.Name, args));
            }

            return new HtmlString(resourceKey);
        }

        public HtmlString LocalizePlanetDesc(string resourceKey, params object[] args)
        {

            var currentCulture = Thread.CurrentThread.CurrentUICulture.Name;

            var language = _languageService.GetLanguageByCulture(currentCulture);
            if (language != null)
            {

                PlanetModel planetModel = _planetService.GetPlanetModel(resourceKey, language.Id);
                if (planetModel == null)
                {
                    return new HtmlString(resourceKey);
                }

                return new HtmlString((args == null || args.Length == 0)
                    ? planetModel.Info.ShortDescription
                    : string.Format(planetModel.Info.ShortDescription, args));
            }

            return new HtmlString(resourceKey);
        }
    }
}
