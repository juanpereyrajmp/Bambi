using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bambi.Domain
{
    public class Address
    {
        public string street { get; set; }
        public string number { get; set; }
        public string floor { get; set; }
        public string apartment { get; set; }
        public string city { get; set; }
        public string state { get; set; }
    }
}