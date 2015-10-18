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
    public partial class LoginLMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == "T")
            {
                Response.Write("HOME");
                // Response.Redirect("HOME"); // homepage
            }
            else
            {
                Session["login"] = "F";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserLoginBL userBL = new UserLoginBL();
            UserLoginCL user = new UserLoginCL();

            user.UserName = userNameTextBox.Text;
            user.Password = passwordTextBox.Text;

           // userNameTextBox.Text = Priviledge.SelectedValue;


            user = userBL.checkUserBL(user);
            if (user.Login == true && Priviledge.SelectedValue == "Employee")
            {
                string name = userBL.getNameBL(user.EmployeeIndex);
                Session["employeeName"] = name;
                Session["login"] = "T";
                Session["employeeIndex"] = user.EmployeeIndex;
                Session["username"] = user.UserName;
                //int num = (int)Session["employeeIndex"];
                //Response.Write("The index is" + num);
                if (user.Privilege == (int)MyEnum.EmployeeStatus.Applicant) // Applicant
                {
                    //Response.Write("I am Applicant!");
                    Response.Redirect("HomePage.aspx");
                }
                else if (user.Privilege == (int)MyEnum.EmployeeStatus.Recommender) // Recommendation
                {
                    Response.Redirect("HomePageR.aspx");
                }
                else if (user.Privilege == (int)MyEnum.EmployeeStatus.Approver) // Approver
                {
                    Response.Redirect("HomePageA.aspx");
                }
            }
            else
            {
		            temp.Text = "There is no such user!! Try Again";
            }
        }
    }
}