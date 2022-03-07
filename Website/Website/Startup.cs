using Microsoft.AspNetCore.Localization;
using Microsoft.EntityFrameworkCore;
using Website.Data;
using Website.Services;
using System.Globalization;

namespace Website
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddScoped<ILanguageService, LanguageService>();
            services.AddScoped<ILocalizationService, LocalizationService>();

            services.AddDbContext<Website_DbContext>(options =>
                options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));

            services.AddLocalization();

            services.AddControllersWithViews()
                .AddViewLocalization();

            var serviceProvider = services.BuildServiceProvider();
            var languageService = serviceProvider.GetRequiredService<ILanguageService>();
            var languages = languageService.GetLanguages();
            var cultures = languages.Select(x => new CultureInfo(x.Culture)).ToArray();

            services.Configure<RequestLocalizationOptions>(options =>
            {
                var englishCulture = cultures.FirstOrDefault(x => x.Name == "en-US");
                options.DefaultRequestCulture = new RequestCulture(englishCulture?.Name ?? "en-US");

                options.SupportedCultures = cultures;
                options.SupportedUICultures = cultures;
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            app.UseRequestLocalization();

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
