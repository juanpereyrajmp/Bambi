using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Bambi.Domain
{
    public class Job
    {
        public int jobID { get; set; }
        public string clientName { get; set; }
        public DateTime jobDate { get; set; }
        public TimeSpan startTime { get; set; }
        public TimeSpan endTime { get; set; }
        public string status { get; set; }
        public Address address { get; set; }
        public float price { get; set; }
        public bool pricePaid { get; set; }
        public float deposit { get; set; }
        public bool depositPaid { get; set; }
        public List<Service> services { get; set; }

    }
}