using System;
using System.Collections.Generic;

namespace Website.Models
{
    public partial class PlanetInfo
    {
        public int PlanetId { get; set; }
        public decimal? LengthFromSun { get; set; }
        public string? ShortDescription { get; set; }
        public string? StateOfMatter { get; set; }
        public double? Diameter { get; set; }
        public double? TravelTimeAroundSun { get; set; }
        public decimal? Temperature { get; set; }
        public decimal? AtmosphericPressure { get; set; }
        public int? NumberOfMoons { get; set; }

        public virtual Planet Planet { get; set; } = null!;
    }
}
