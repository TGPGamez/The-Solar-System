using System;
using System.Collections.Generic;

namespace Website.Models
{
    public partial class PlanetStringResource
    {
        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string? ShortDescription { get; set; }
        public string? StateOfMatter { get; set; }

        public virtual LanguagesPlanet? LanguagesPlanet { get; set; }
    }
}
