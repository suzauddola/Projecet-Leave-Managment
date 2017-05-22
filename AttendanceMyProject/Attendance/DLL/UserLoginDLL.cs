using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using Attendance.Models;

namespace Attendance.DLL
{
    public class UserLoginDLL
    {
        SqlConnection sqlConn = new SqlConnection();
        string _connStr = WebConfigurationManager.ConnectionStrings["attendence"].ConnectionString;

        public UserModel UserInfoGetway(string Name, string Pass)
        {
            sqlConn.ConnectionString = _connStr;

            string insertQuery = "SELECT * FROM [ad].[dbo].[tbl_Outstation_UserList] WHERE user_id = '"+Name+"' And password = '"+Pass+"'";
            //string insertQuery = "SELECT * FROM [ad].[dbo].[tbl_Outstation_UserList] WHERE user_id = 'afrin' And password = 'a123n'";

            SqlCommand sqlCommand = new SqlCommand(insertQuery, sqlConn);
            sqlConn.Open();
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

            //List<UserModel> userList = new List<UserModel>();
            UserModel um = new UserModel();
            while (sqlDataReader.Read())
            {
                
                um.user_id = sqlDataReader["user_id"].ToString();
                um.user_name = sqlDataReader["user_name"].ToString();
                //um.password = sqlDataReader["password"].ToString();
                um.emp_designation = sqlDataReader["emp_designation"].ToString();
                um.emp_id = sqlDataReader["emp_id"].ToString();
                um.mac_id = sqlDataReader["mac_id"].ToString();
                um.com_code = sqlDataReader["com_code"].ToString();
                um.user_type = sqlDataReader["user_type"].ToString();
            }
            sqlDataReader.Close();
            sqlConn.Close();
            return um;
        }
        
    }
}