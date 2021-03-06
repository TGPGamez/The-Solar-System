using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc;
using Website.Models;
using Website.Services;
using System.Diagnostics;

namespace Website.Controllers
{
    public class HomeController : BaseController
    {
        public HomeController(ILanguageService languageService, ILocalizationLanguageService localizationService)
            : base(languageService, localizationService)
        {

        }

        public IActionResult Index()
        {
            // ViewData["Title"] = Localize("customer.page.create.title");

            return View();
        }

        [HttpPost]
        public IActionResult ChangeLanguage(string culture, string returnUrl)
        {
            Response.Cookies.Append(
                CookieRequestCultureProvider.DefaultCookieName,
                CookieRequestCultureProvider.MakeCookieValue(new RequestCulture(culture)),
                new CookieOptions
                {
                    Expires = DateTimeOffset.UtcNow.AddDays(7)
                }
            );

            return LocalRedirect(returnUrl);
        }
    }
}