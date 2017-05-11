using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using eLeave.Models;

namespace eLeave.Controllers
{
    public class LoginController : Controller
    {
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

        public UserLogin LoginApplication()
        {
            var data = "where is data to see";
            var value = new UserLogin()
            {
                UserName = "name",
                Password = "pass"

            };
            return value;
        }

        public UserLogin LoginApplication(string user, string pass)
        {
            var data = "where is data to see";
            var value = new UserLogin()
            {
                UserName = "name",
                Password = "pass"

            };
            return value;
        }
	
    }
}