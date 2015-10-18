using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS1
{
    public partial class LeaveHistoryR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session Check
            if (Session["login"] == "T")
            {
                //nameLabel.Text = "Hello, " + Session["username"];
            }
            else
            {
                Response.Redirect("LoginLMS.aspx");
            }
        }
    }
}