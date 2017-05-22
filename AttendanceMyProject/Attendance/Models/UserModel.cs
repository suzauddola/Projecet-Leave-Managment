using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace Attendance.Models
{
    public class UserModel
    {
        public string user_id { get; set; }
        public string user_name { get; set; }
        public string password { get; set; }
        public string emp_id { get; set; }
        public string emp_designation { get; set; }
        public string mac_id { get; set; }
        public string user_type { get; set; }
        public string com_code { get; set; }

    }
}