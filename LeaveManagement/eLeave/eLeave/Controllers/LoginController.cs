using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using eLeave.DLL;
using eLeave.Models;

namespace eLeave.Controllers
{
    public class LoginController : Controller
    {
        LoginLogic llogic = new LoginLogic();
        //
        // GET: /Login/
        public ActionResult Index()
        {
            if (Session["login"] == "T")
            {
                Response.Write("HOME");
            }
            else
            {
                Session["login"] = "F";
            }
            return View();
        }

        public JsonResult LoginApplication(string user, string pass)
        {
            var data = "where is data to see";
            
            var loginInfo = new UserLogin()
            {
                UserName = user,
                Password = pass,
            };

            var loginData = llogic.CheckUserLogic(loginInfo);



            if (loginData.Login == true /*&& Priviledge.SelectedValue == "Employee"*/)
            {
                string name = llogic.GetNameBl(loginData.EmployeeIndex);
                //Session["employeeName"] = name;
                //Session["login"] = "T";
                //Session["employeeIndex"] = loginData.EmployeeIndex;
                //Session["username"] = loginData.UserName;

                var value = new
                {
                    EmpName = name,
                    EmpIndex = loginData.EmployeeIndex,
                    PrevilageId = loginData.Privilege,
                    UserName = loginData.UserName,
                    IsLogin = loginData.Login,
                    msg = "User Founded"
                };

                return Json(value, JsonRequestBehavior.AllowGet);
            }
            else
            {
                var value = new
                {
                    EmpName = "",
                    EmpIndex = loginData.EmployeeIndex,
                    PrevilageId = loginData.Privilege,
                    UserName = loginData.UserName,
                    IsLogin = loginData.Login,
                    msg = "User or Password is Incorrect"
                };
                return Json(value, JsonRequestBehavior.AllowGet);
            }
        }

    }
}