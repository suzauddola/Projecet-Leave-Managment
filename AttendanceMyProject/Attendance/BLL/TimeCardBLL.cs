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
        public List<TimeCardModel> UserTimeCardInfoBll(UserModel userModel, string cMonth)
        {
            var cYear = DateTime.Now.Year;
            var cur = new[] { cMonth, cYear.ToString() };

            var prev = PMonth(cMonth, cYear);

            var tcDll = new TimeCardDLL();
            var timeCardLIstData = tcDll.UserTimeCardInfoDll(userModel, cur, prev);

            //var timeCardLIstData = tcDll.UserTimeCardInfoDll(userModel, cMonth, pMonth,pYear,cYear);

            return timeCardLIstData;
        }

        private string[] PMonth(string cMonth, int cYear)
        {
            var months = new[] {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October","Navember", "December"};

            var pMonth = "";
            var pYear = 0;

            for (var i = 0; i < months.Length; i++)
            {
                if (cMonth == months[0])
                {
                    pMonth = months[11];
                    pYear = cYear - 1;
                    break;
                }

                if (months[i] != cMonth) continue;
                pMonth = months[i - 1];
                pYear = cYear;
                break;
            }

            var prev = new[] { pMonth, pYear.ToString() };

            return prev;
        }
    }
}