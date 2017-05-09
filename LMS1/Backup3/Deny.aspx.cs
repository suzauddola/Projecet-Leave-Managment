using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LMS1.BL;

namespace LMS1
{
    public partial class Deny : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Request.QueryString["id"];
            int leaveIndex = Convert.ToInt32(str);
            RecommendationBL objBL = new RecommendationBL();
            objBL.denyLeaveBL(leaveIndex);
            Response.Redirect("RecommendListR.aspx");
        }
    }
}