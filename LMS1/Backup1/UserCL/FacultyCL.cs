using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMS1.CL
{
    public class FacultyCL : EmployeeCL
    {
        private string shortName;
        private string department;
        private string designation;
        private int superiorId;


        public string ShortName
        {
            get { return shortName; }
            set { shortName = value; }
        }

        public string Department
        {
            get { return department; }
            set { department = value; }
        }

        public string Designation
        {
            get { return designation; }
            set { designation = value; }
        }

        public int SuperiorId
        {
            get { return superiorId; }
            set { superiorId = value; }
        }
    }
}