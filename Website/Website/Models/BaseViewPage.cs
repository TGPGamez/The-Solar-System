using Microsoft.AspNetCore.Html;
using Microsoft.AspNetCore.Mvc.Razor.Internal;
using Website.Services;

namespace Website.Models
{
    public abstract class BaseViewPage<TModel> : Microsoft.AspNetCore.Mvc.Razor.RazorPage<TModel>
    {

        [RazorInject]
        public ILanguageService LanguageService { get; set; }

        [RazorInject]
        public ILocalizationService LocalizationService { get; set; }
        [RazorInject]
        public IPlanetService PlanetService { get; set; }

        public delegate HtmlString Localizer(string resourceKey, params object[] args);
        private Localizer _localizer;

        public Localizer Localize
        {
            get
            {
                if (_localizer == null)
                {
                    var currentCulture = Thread.CurrentThread.CurrentUICulture.Name;

                    var language = LanguageService.GetLanguageByCulture(currentCulture);
                    if (language != null)
                    {
                        _localizer = (resourceKey, args) =>
                        {
                            var stringResource = LocalizationService.GetStringResource(resourceKey, language.Id);

                            if (stringResource == null || string.IsNullOrEmpty(stringResource.Value))
                            {
                                return new HtmlString(resourceKey);
                            }

                            return new HtmlString((args == null || args.Length == 0)
                                ? stringResource.Value
                                : string.Format(stringResource.Value, args));
                        };
                    }
                }
                return _localizer;
            }
        }

        private Localizer _localizerPlanetName;
        public Localizer LocalizePlanetName
        {
            get
            {
                if (_localizerPlanetName == null)
                {
                    var currentCulture = Thread.CurrentThread.CurrentUICulture.Name;

                    var language = LanguageService.GetLanguageByCulture(currentCulture);
                    if (language != null)
                    {
                        _localizerPlanetName = (resourceKey, args) =>
                        {
                            PlanetModel planetModel = PlanetService.GetPlanetModel(resourceKey, language.Id);
                            if (planetModel == null)
                            {
                                return new HtmlString(resourceKey);
                            }

                            return new HtmlString((args == null || args.Length == 0)
                                ? planetModel.General.Name
                                : string.Format(planetModel.General.Name, args));
                        };
                    }
                }
                return _localizerPlanetName;
            }
        }

        private Localizer _localizerPlanetDesc;
        public Localizer LocalizePlanetDesc
        {
            get
            {
                if (_localizerPlanetDesc == null)
                {
                    var currentCulture = Thread.CurrentThread.CurrentUICulture.Name;

                    var language = LanguageService.GetLanguageByCulture(currentCulture);
                    if (language != null)
                    {
                        _localizerPlanetDesc = (resourceKey, args) =>
                        {
                            PlanetModel planetModel = PlanetService.GetPlanetModel(resourceKey, language.Id);
                            if (planetModel == null)
                            {
                                return new HtmlString(resourceKey);
                            }

                            return new HtmlString((args == null || args.Length == 0)
                                ? planetModel.Info.ShortDescription
                                : string.Format(planetModel.Info.ShortDescription, args));
                        };
                    }
                }
                return _localizerPlanetDesc;
            }
        }
    }

    public abstract class BaseViewPage : BaseViewPage<dynamic>
    {
    }
}
