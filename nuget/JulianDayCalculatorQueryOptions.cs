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
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }
    }
}
