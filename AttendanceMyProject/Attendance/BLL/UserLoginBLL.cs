using System;
using System.Collections.Generic;
using System.Web;
using Attendance.DLL;
using Attendance.Models;

namespace Attendance.BLL
{
    public class UserLoginBLL
    {
        UserLoginDLL ulDll = new UserLoginDLL();

        public UserModel UserInfo(string Name, string Pass)
        {
            return ulDll.UserInfoGetway(Name, Pass);
        }
    }
}
