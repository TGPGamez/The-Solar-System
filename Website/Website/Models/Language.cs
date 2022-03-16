using System;
using System.Collections.Generic;

namespace Website.Models
{
    public partial class Language
    {
        public Language()
        {
            LanguagesPlanets = new HashSet<LanguagesPlanet>();
            StringResources = new HashSet<StringResource>();
        }

        public int Id { get; set; }
        public string Culture { get; set; } = null!;
        public string Name { get; set; } = null!;

        public virtual ICollection<LanguagesPlanet> LanguagesPlanets { get; set; }
        public virtual ICollection<StringResource> StringResources { get; set; }
    }
}
