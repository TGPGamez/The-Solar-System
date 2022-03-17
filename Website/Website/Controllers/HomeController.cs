using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Net;
using System.Net.Sockets;
using System.Text;
using Website.Models;
using Website.Services;

namespace Website.Controllers
{
    public class HomeController : BaseController
    {
        public HomeController(ILanguageService languageService, ILocalizationService localizationService, IPlanetService planetService)
            : base(languageService, localizationService, planetService)
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

        public void Sender(string planet)
        {

            IPAddress ip = IPAddress.Parse("10.108.233.59");
            int port = 5000;
            TcpClient client = new TcpClient();
            client.Connect(ip, port);
            Console.WriteLine("Client Connected");
            NetworkStream ns = client.GetStream();
            Console.WriteLine(planet);
            byte[] buffer = Encoding.ASCII.GetBytes(planet);
            try
            {
                ns.Write(buffer, 0, buffer.Length);
            }
            catch (Exception)
            {
                Console.WriteLine("FUCK");
            }
            client.Client.Shutdown(SocketShutdown.Send);
            ns.Close();
            client.Close();
            Console.WriteLine("Disconnect from server");
            
        }

    }
}