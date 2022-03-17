using System;
using System.Collections.Generic;

namespace Website.Models
{
    public partial class Planet
    {
        public Planet()
        {
            LanguagesPlanets = new HashSet<LanguagesPlanet>();
        }

        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string? ImagePath { get; set; }

        public virtual PlanetInfo PlanetInfo { get; set; } = null!;
        public virtual ICollection<LanguagesPlanet> LanguagesPlanets { get; set; }
    }
}
