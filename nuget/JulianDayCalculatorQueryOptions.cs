using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.JulianDayCalculator
{
    /// <summary>
    /// Query options for the Julian Day Calculator API
    /// </summary>
    public class JulianDayCalculatorQueryOptions
    {
        /// <summary>
        /// The Gregorian date in YYYY-MM-DD format
        /// Example: 2024-03-15
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }
    }
}
