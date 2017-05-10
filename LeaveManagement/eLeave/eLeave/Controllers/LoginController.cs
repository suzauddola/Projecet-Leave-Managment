using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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
	}
}