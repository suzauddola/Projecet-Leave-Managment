using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eLeave.Models
{
    public class LeaveAvailability
    {
        public int EmployeeIndex { get; set; }
        public string LeaveIndex  { get; set; }
        public int AvailableDay { get; set; }
    }
}