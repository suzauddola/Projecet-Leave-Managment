using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMS1.CL
{
    public class StaffCL : EmployeeCL
    {
        private string designation;

        public string Designation
        {
            get { return designation; }
            set { designation = value; }
        }
    }
}