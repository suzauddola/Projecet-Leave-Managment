using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMS1.CL
{
    public class EmployeeCL
    {
        private int index;
        private string name;
        private string gender;
        private string email;
        private string mobile;
        private string empType;

        public int Index
        {
            get { return index; }
            set { index = value; }
        }


        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Mobile
        {
            get { return mobile; }
            set { mobile = value; }
        }

        public string EmpType
        {
            get { return empType; }
            set { empType = value; }
        }
    }
}