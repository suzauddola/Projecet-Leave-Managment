using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eLeave.Models
{
    public class Leave
    {
        public int Index { get; set; }
        public string EmployeeIndex { get; set; }
        public string LeaveIndex { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public string ApplyDate { get; set; }
        public int NoOfDays { get; set; }
        public string Status { get; set; }
        public string StatusWord { get; set; }
        public string Remarks { get; set; }
    }
}