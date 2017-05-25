using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using Attendance.Models;

namespace Attendance.DLL
{
    public class TimeCardDLL
    {
        readonly SqlConnection _sqlConn = new SqlConnection();
        readonly string _connStr = WebConfigurationManager.ConnectionStrings["attendence"].ConnectionString;
        public List<TimeCardModel> UserTimeCardInfoDll(UserModel userData,string[] cur, string[] prev)
        {
            
            _sqlConn.ConnectionString = _connStr;
            var insertQuery = "select CONVERT(VARCHAR,entrydate,106) Date, left(cast(intime as time),5) as [In Time], left(cast(outtime as time),5) as [Out Time],atdstat Status FROM [ad].[dbo].[payatd] WHERE emp_id=" + userData.emp_id + " and com_code='" + userData.com_code + "' and CONVERT(date,entrydate,108) between '21-" + prev[0] + "-"+prev[1]+"' and '20-" + cur[0] + "-"+cur[1]+"'order by entrydate";

            //var insertQuery = "select CONVERT(VARCHAR,entrydate,126) Date, left(cast(intime as time),5) as [In Time], left(cast(outtime as time),5) as [Out Time],atdstat Status FROM [ad].[dbo].[payatd] WHERE emp_id=(select emp_id FROM [ad].[dbo].[tbl_Outstation_UserList] WHERE user_id='" + userData.user_id + "') and com_code='" + userData.com_code + "' and CONVERT(date,entrydate,108) between '21-" + "April" + "-2017' and '20-" + "May" + "-2017'order by entrydate";
            //return "success";

            var sqlCommand = new SqlCommand(insertQuery, _sqlConn);
            _sqlConn.Open();
            var sqlDataReader = sqlCommand.ExecuteReader();

            var timeCardList = new List<TimeCardModel>();

            while (sqlDataReader.Read())
            {
                var tcModel = new TimeCardModel
                {
                    Date = sqlDataReader["Date"].ToString(),
                    InTime = sqlDataReader["In Time"].ToString(),
                    OutTime = sqlDataReader["Out Time"].ToString(),
                    Status = sqlDataReader["Status"].ToString()
                };
                timeCardList.Add(tcModel);
            }

            sqlDataReader.Close();
            _sqlConn.Close();

            return timeCardList;
        }
    }
}