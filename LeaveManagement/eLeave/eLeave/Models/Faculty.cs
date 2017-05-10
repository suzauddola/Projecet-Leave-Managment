using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eLeave.Models
{
    public class Faculty:Employee
    {
        public string ShortName { get; set; }
        public string Department { get; set; }
        public string Designation { get; set; }
        public string SuperiorId { get; set; }
    }
}