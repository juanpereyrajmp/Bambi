using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bambi.Domain
{
    public class Service
    {
        public int serviceID { get; set; }
        public string description { get; set; }
        public float price { get; set; }
        public TimeSpan duration { get; set; }
        public bool active { get; set; }
    }
}