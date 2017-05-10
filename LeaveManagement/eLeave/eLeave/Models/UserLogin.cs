using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eLeave.Models
{
    public class UserLogin
    {
        public int EmployeeIndex { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public int Privilege { get; set; }
        public bool Login { get; set; }

    }
}