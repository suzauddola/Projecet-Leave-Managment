using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS1
{
    public partial class HomePageA1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session Check
            if (Session["login"] == "T")
            {
                //nameLabel.Text = "Hello, " + Session["username"];
                Label1.Text = "Welcome, " + (string)Session["employeeName"];
            }
            else
            {
                Response.Redirect("LoginLMS.aspx");
            }
        }
    }
}