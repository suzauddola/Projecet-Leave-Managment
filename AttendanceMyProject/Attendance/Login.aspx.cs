using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Configuration;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Attendance.BLL;
using Attendance.Models;

namespace Attendance
{
    public partial class Login : System.Web.UI.Page
    {
        UserLoginBLL ulBLL = new UserLoginBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            msg.Text = "";
        }
        [WebMethod()]
        public static UserModel UserData(string name, string pass)
        {
           
            UserLoginBLL ulBLL = new UserLoginBLL();
            var data = ulBLL.UserInfo(name, pass);
            return data;
        }

        //protected void LoginSubmit(object sender, EventArgs e)
        //{
        //    var Name = name.Text;
        //    var Pass = pass.Text;
        //    name.Text = pass.Text = "";

        //    if (Name != "" && Pass != "")
        //    {
        //        var data = ulBLL.UserInfo(Name, Pass);

        //        if (data.user_name != null)
        //        {
        //            Session["userId"] = data.user_id;
        //            Session["userName"] = data.user_name;
        //            Session["userType"] = data.user_type;
        //            Response.Redirect("Index.aspx");
        //        }
        //        {
        //            msg.Text = "User Name or Password is Incorrect";
        //        }
                
        //    }
        //    else
        //    {
        //        msg.Text = "Please insert User Name and Password";
        //    }
            
        //    name.Text = pass.Text = "";
            
        //}
    }

}