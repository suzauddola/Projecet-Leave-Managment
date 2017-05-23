using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Attendance.DLL;
using Attendance.Models;
using iTextSharp.text;

namespace Attendance.BLL
{
    public class TimeCardBLL
    {
        public List<TimeCardModel> UserTimeCardInfoBll(UserModel userModel)
        {
            TimeCardDLL tcDll = new TimeCardDLL();
            var timeCardLIstData = tcDll.UserTimeCardInfoDll(userModel);
            return timeCardLIstData;
        }
    }
}