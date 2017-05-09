using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using LMS1.BL;
using LMS1.CL;

namespace LMS1
{
    public partial class LeaveStatus : System.Web.UI.Page
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

            ApplicationBL objBL = new ApplicationBL();
            DataSet ds = new DataSet();
            int employeeIndex = (int)Session["employeeIndex"];
            ds = objBL.getLeaveStatusBL(employeeIndex);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected object getStatus(object obj)
        {
            string str = (string)obj;
            int status = int.Parse(str);
            if(status == 1) return "Applied";
            if(status == 2) return "Recommended";
            if(status == 3) return "Approved";
            return "Rejected"; // for 4*/
            return obj;
        }
    }
}