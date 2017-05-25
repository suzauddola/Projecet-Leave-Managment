using System;
using System.Collections.Generic;
using System.Web.Services;
using Attendance.BLL;
using Attendance.Models;
using Newtonsoft.Json;

namespace Attendance
{
    public partial class TimeCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod()]
        public static List<TimeCardModel> UserTimeCard(String userInfo, string cMonth)
        {
            var userData = JsonConvert.DeserializeObject<UserModel>(userInfo);

            var tcBll = new TimeCardBLL();
            var timeCardInfo = tcBll.UserTimeCardInfoBll(userData, cMonth);

            return timeCardInfo;
        }
    }
}