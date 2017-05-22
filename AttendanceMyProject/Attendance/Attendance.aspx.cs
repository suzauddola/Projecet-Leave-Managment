using System;
using System.Collections.Generic;
using System.Globalization;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Attendance.Models;
using Newtonsoft.Json;

namespace Attendance
{
    public partial class Attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod()]
        public static string SaveAttendance(string emp_id, string com_code)
        {

            var date = DateTime.Now;

            AttendanceModel aModel = new AttendanceModel()
            {
                emp_id = emp_id,
                com_code = com_code,
                login_time = date.ToString(),
                latitude = "23.80015670",
                longitude = "90.41108220",
                Address = "Road No 56,Dhaka,Bangladesh",
                Station = "Road No 56,Dhaka,Bangladesh",
                post = 1
            };

            return "Success";
        }
    }
}