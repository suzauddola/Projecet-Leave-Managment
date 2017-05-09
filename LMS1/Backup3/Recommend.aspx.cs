using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LMS1.BL;
using LMS1.CL;

namespace LMS1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string str = Request.QueryString["id"];
            int leaveIndex = Convert.ToInt32(str);
            RecommendationBL objBL = new RecommendationBL();
            objBL.recommendLeaveBL(leaveIndex);
            Response.Redirect("RecommendListR.aspx");
        }
    }
}