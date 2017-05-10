using System.Data;
using System.Data.SqlClient;
using eLeave.Models;

namespace eLeave.Getway
{
    public class Login
    {
        public DataSet CheckUser(UserLogin objLogin)
        {
            WebConfig wc = new WebConfig();
            wc.CreateDbConnection();

            var sql = "SELECT * FROM login_info WHERE username='" + objLogin.UserName + "' AND password = '"+objLogin.Password+"'";

            DataSet ds = wc.ExecuteQueryWithReader(sql);
            return ds;
        }
        public DataSet CheckUserDl(UserLogin objLogin)
        {
            WebConfig wc = new WebConfig();
            SqlConnection connection = wc.ConnectionString();

            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "check_user";
            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = objLogin.UserName;
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = objLogin.Password;
            cmd.Connection = connection;

            connection.Open();
            DataTable myTable = new DataTable();
            myTable.Load(cmd.ExecuteReader());
            ds.Tables.Add(myTable);
            connection.Close();

            return ds;
        }
        public DataSet GetNameDl(int employeeIndex)
        {
            WebConfig wc = new WebConfig();
            SqlConnection connection = wc.ConnectionString();

            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "get_name";
            cmd.Parameters.Add("@employee_index", SqlDbType.VarChar).Value = employeeIndex;
            cmd.Connection = connection;

            connection.Open();
            DataTable myTable = new DataTable();
            myTable.Load(cmd.ExecuteReader());
            ds.Tables.Add(myTable);

            connection.Close();
            return ds;
        }
    }
}