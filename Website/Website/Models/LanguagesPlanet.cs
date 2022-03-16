using System;
using System.Collections.Generic;

namespace Website.Models
{
    public partial class LanguagesPlanet
    {
        public int LanguageId { get; set; }
        public int PlanetId { get; set; }
        public int? PsrId { get; set; }

        public virtual Language Language { get; set; } = null!;
        public virtual Planet Planet { get; set; } = null!;
        public virtual PlanetStringResource? Psr { get; set; }
    }
}
