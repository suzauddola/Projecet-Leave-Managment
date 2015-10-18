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
    public partial class LeaveHistory : System.Web.UI.Page
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
            int employeeIndex = (int) Session["employeeIndex"];
            ds = objBL.getLeaveHistoryBL(employeeIndex);

            //Checking whether the dataset is empty or not
            if (ds.Tables[0].Rows.Count != 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                /**
                 *  @AYON Make a same page like the Leave History & just put
                 *  "No Result Found" in the place of gridview
                 * 
                 * */
                //Response.Write("No Result Found.");
            }
        }
    }
}