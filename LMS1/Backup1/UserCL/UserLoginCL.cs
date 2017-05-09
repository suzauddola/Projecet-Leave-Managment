using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMS1.CL
{
    public class UserLoginCL
    {
        private int employeeindex;
        private string userName;
        private string password;
        private int privilege;
        private bool login;


        public int EmployeeIndex
        {
            get { return employeeindex; }
            set { employeeindex = value; }
        }

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public int Privilege
        {
            get { return privilege; }
            set { privilege = value; }
        }

        public bool Login
        {
            get { return login; }
            set { login = value; }
        }
    }
}