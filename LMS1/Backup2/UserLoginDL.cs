using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using LMS1.CL;
using System.Data.SqlClient;
using System.Data;

namespace LMS1.DL
{
    public class UserLoginDL
    {
        public DataSet checkUserDL(UserLoginCL obj)
        {
            CreateConnectionDL objDL = new CreateConnectionDL();
            objDL.createDbConnection();

            string sql = "SELECT * FROM login_info WHERE username = '" + obj.UserName +
                "' AND password =  '" + obj.Password + "'";
            DataSet ds = objDL.executeQueryWithReader(sql);

            //if (ds.tables[0].rows.count == 0)
            //{
            //    obj.login = false;
            //}
            //else
            //{
            //    obj.login = true;
            //    obj.privilege = (int)ds.tables[0].rows[0]["privilage"];
            //    obj.employeeindex = (int)ds.tables[0].rows[0]["employee_index_pk"];
            //}
           

            return ds;
        }

        /**
         * <summary> Checking user Authentication from database</summary>
         * 
         * <param name="obj"> </param>
         * <returns> returning a DataSet of the username & password</returns>
         * 
         **/

        public DataSet checkUserDL1(UserLoginCL obj)
        {
            //CreateConnectionDL objDL = new CreateConnectionDL();
           // objDL.createDbConnection();
           /* SqlConnection con = new SqlConnection();
            con.ConnectionString = "server=User-pc\\sqlexpress;database=eLeave;trusted_connection=true";*/

            CreateConnectionDL objDL = new CreateConnectionDL();
            SqlConnection con = new SqlConnection();
            con = objDL.createDbConnection1();

            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "check_user";
            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = obj.UserName;
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = obj.Password;
            cmd.Connection = con;

            con.Open();
            DataTable myTable = new DataTable();
            myTable.Load(cmd.ExecuteReader());
            ds.Tables.Add(myTable);

            con.Close();

            return ds;
        }

        /**
         * <summary> Getting the name of the user from the database</summary>
         * 
         * <param name="employeeIndex"> </param>
         * 
         **/ 

        public DataSet getNameDL(int employeeIndex)
        {
            /*SqlConnection con = new SqlConnection();
            con.ConnectionString = "server=User-pc\\sqlexpress;database=eLeave;trusted_connection=true";*/

            CreateConnectionDL objDL = new CreateConnectionDL();
            SqlConnection con = new SqlConnection();
            con = objDL.createDbConnection1();

            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "get_name";
            cmd.Parameters.Add("@employee_index", SqlDbType.VarChar).Value = employeeIndex;
            
            cmd.Connection = con;

            con.Open();
            DataTable myTable = new DataTable();
            myTable.Load(cmd.ExecuteReader());
            ds.Tables.Add(myTable);

            con.Close();

            return ds;
        }
    }
}