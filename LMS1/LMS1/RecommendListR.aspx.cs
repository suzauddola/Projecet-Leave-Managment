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
    public partial class RecommendListR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RecommendationBL objBL = new RecommendationBL();
            DataSet ds = new DataSet();

            //int superiorId = (int)Session["employeeIndex"];
            int superiorId = 1;
            ds = objBL.getRecommendationListBL(superiorId);
            if (ds.Tables[0].Rows.Count != 0)
            {
                RecommendList.DataSource = ds;
                RecommendList.DataBind();
            }
        }
    }
}