using System.Text.RegularExpressions;
using Website.Models;

namespace Website.Extensions
{
    public static class FormatPlanetModelDesc
    {
        private static List<string> identifiers = new List<string>()
        {
            "name",
            "lengthFromSun",
            "stateOfMatter",
            "diameter",
            "travelTimeAroundSun",
            "temperature",
            "atmosphericPressure",
            "numberOfMoons"
        };
        public static void FormatDesc(this PlanetModel planetModel)
        {
            List<object> values = new List<object>()
            {
                planetModel.General.Name,
                planetModel.Info.LengthFromSun,
                planetModel.Info.StateOfMatter,
                planetModel.Info.Diameter,
                planetModel.Info.TravelTimeAroundSun,
                planetModel.Info.Temperature,
                planetModel.Info.AtmosphericPressure,
                planetModel.Info.NumberOfMoons
            };

            string? resultString = planetModel.Info.ShortDescription;
            if (resultString == null || resultString.Length == 0) { planetModel.Info.ShortDescription = ""; }

            Regex regex;
            for (int i = 0; i < identifiers.Count-1; i++)
            {
                if (values[i] != null)
                {
                    regex = new Regex(@"\$" + identifiers[i], RegexOptions.Multiline);
                    resultString = regex.Replace(resultString, values[i].ToString());
                }
            }
            planetModel.Info.ShortDescription = resultString;
        }
    }
}
