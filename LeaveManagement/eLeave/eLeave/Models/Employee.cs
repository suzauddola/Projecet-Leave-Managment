using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eLeave.Models
{
    public class Employee
    {
        public int Index { get; set; }
        public string Name { get; set; }
        public string Gender { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string EmpType { get; set; }
    }
}