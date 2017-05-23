using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Attendance.BLL;
using Attendance.Models;
using iTextSharp.text;
using Newtonsoft.Json;

namespace Attendance
{
    public partial class TimeCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod()]
        public static List<TimeCardModel> UserTimeCard(String userInfo)
        {
            var userData = JsonConvert.DeserializeObject<UserModel>(userInfo);

            TimeCardBLL tcBll = new TimeCardBLL();
            var timeCardInfo = tcBll.UserTimeCardInfoBll(userData);

            return timeCardInfo;

            //JavaScriptSerializer objJavascript = new JavaScriptSerializer();

            //var myDataTable = objJavascript.DeserializeObject(userInfo);

            //Dictionary<object,object > object = myDataTable;

            //List<Dictionary<String, String>> tableRows = new List<Dictionary<String, String>>();

            //Dictionary<string, string> row;

            //foreach (DataRow dr in (IEnumerable<DataRow>)myDataTable)
            //{
            //    row = new Dictionary<String, String>();
            //    foreach (DataColumn col in (IEnumerable<DataColumn>) myDataTable)
            //    {
            //        row.Add(col.ColumnName, col.ColumnName);
            //    }
            //    tableRows.Add(row);
            //}
            //return serializer.Serialize(tableRows);

            //this.DropDownList1.Items.FindByText(DateTime.Now.ToString("MMMM")).Selected = true;
            //curMonth = int.Parse(DropDownList1.SelectedValue);
            //cMonth = new DateTime(2010, int.Parse(DropDownList1.SelectedValue), 1).ToString("MMM", CultureInfo.InvariantCulture);
            //cMonth = this.DropDownList1.Text;
            //if (cMonth == "Jan")
            //{
            //    pMonth = "Dec";
            //    jobcard = "select CONVERT(VARCHAR,entrydate,106) Date, left(cast(intime as time),5) as [In Time], left(cast(outtime as time),5) as [Out Time],atdstat Status from payatd where emp_id=(select emp_id from tbl_Outstation_UserList where user_id='" + user + "') and com_code='" + com_code + "' and CONVERT(date,entrydate,108) between '21-'" + "+'" + pMonth + "'+" + "'-'+rtrim(year(getdate())-1) and '20-'" + "+'" + cMonth + "'+" + "'-'+rtrim(year(getdate()))order by entrydate";
            //}
            //else
            //{
            //    pMonth = new DateTime(2010, curMonth - 1, 1).ToString("MMM", CultureInfo.InvariantCulture);
            //    jobcard = "select CONVERT(VARCHAR,entrydate,106) Date, left(cast(intime as time),5) as [In Time], left(cast(outtime as time),5) as [Out Time],atdstat Status from payatd where emp_id=(select emp_id from tbl_Outstation_UserList where user_id='" + user + "')and com_code='" + com_code + "' and  CONVERT(date,entrydate,108) between '21-'" + "+'" + pMonth + "'+" + "'-'+rtrim(year(getdate())) and '20-'" + "+'" + cMonth + "'+" + "'-'+rtrim(year(getdate()))order by entrydate";
            //}

            //var kikoi = "select CONVERT(VARCHAR,entrydate,106) Date, left(cast(intime as time),5) as [In Time], left(cast(outtime as time),5) as [Out Time],atdstat Status FROM [ad].[dbo].[payatd] WHERE emp_id=(select emp_id FROM [ad].[dbo].[tbl_Outstation_UserList] WHERE user_id='" + userData.user_id + "') and com_code='" + userData.com_code + "' and CONVERT(date,entrydate,108) between '21-" + "February" + "-2017' and '20-"+"March"+"-2017'order by entrydate";

            //return "yes";
        }
    }
}