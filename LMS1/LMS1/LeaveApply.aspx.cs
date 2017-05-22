using System;
using LMS1.BL;
using LMS1.CL;

namespace LMS1
{
    public partial class LeaveApply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Checking User Authentication
            if (Session["login"] == "T")
            {
                //nameLabel.Text = "Hello, " + Session["username"];
            }
            else
            {
                Response.Redirect("LoginLMS.aspx");
            }
            RecommendedPersonTextbox.Text = "Dr. Hasan Sarwar";
        }

        protected int calculatedDayFromDates()
        {
            DateTime sd = Convert.ToDateTime(FromDateTextbox.Text);
            DateTime ed = Convert.ToDateTime(ToDateTextbox.Text);

            TimeSpan span = ed - sd;

            return span.Days;
        }

        protected void DateTextChange(object sender, EventArgs e)
        {
            if (FromDateTextbox.Text != "" && ToDateTextbox.Text != "")
            {
                int numOfDay = calculatedDayFromDates();
                WorkingDaysTextbox.Text = (string)numOfDay.ToString();

            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            LeaveCL obj = new LeaveCL();
            obj.EmployeeIndex = (int)Session["employeeIndex"];
            obj.StartingDate = (string)FromDateTextbox.Text;
            obj.EndingDate = (string)ToDateTextbox.Text;
            obj.NumOfDays = calculatedDayFromDates();
            obj.LeaveIndex = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            obj.Remarks = Remarks.Text;

            obj.Status = (int)MyEnum.ApplicationStatus.Applied;
            obj.StatusWord = "Pending";

            ApplicationBL objBL = new ApplicationBL();
            int status = objBL.leaveRequestBL(obj);

            //Response.Write("SuccesfullY inserted. Status" + status);
            Response.Redirect("HomePage.aspx");// to homepage

        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            RecommendedPersonTextbox.Text = "";
            FromDateTextbox.Text = "";
            ToDateTextbox.Text = "";
            WorkingDaysTextbox.Text = "";
        }
    }
}