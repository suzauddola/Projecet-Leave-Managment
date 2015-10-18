using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using LMS1.CL;

namespace LMS1.DL
{
    public class ApplicationDL
    {
        public int leaveRequestDL(LeaveCL obj)
        {
            CreateConnectionDL objDL = new CreateConnectionDL();
            objDL.createDbConnection();

            DateTime sd = Convert.ToDateTime(obj.StartingDate);
            DateTime ed = Convert.ToDateTime(obj.EndingDate);
            DateTime ad = DateTime.Now;

            string sql = "INSERT INTO leave_details (employee_index_pk, leave_index_pk, starting_date, ending_date, num_of_days,  applying_date, status, apply_remakrs, status_word)"
                + "VALUES('" + obj.EmployeeIndex + "','" + obj.LeaveIndex + "','" + sd + "','" + ed + "','" + obj.NumOfDays + "','" + ad + "','" + obj.Status+ "','" + obj.Remarks + "','" + obj.StatusWord +"')";
            int status = objDL.executeQuery(sql);

            //int status = 0;
            return status;
        }

        public DataSet getAvailableDayDL(int employeeIndex)
        {
            CreateConnectionDL objDL = new CreateConnectionDL();
            objDL.createDbConnection();

            string sql = "SELECT leave_type.leave_name, leave_availability.available_day FROM leave_type, leave_availability" +
                " WHERE leave_type.leave_index_pk = leave_availability.leave_index_pk AND leave_availability.employee_index_pk = " +
                employeeIndex;

            DataSet ds = new DataSet();
            ds = objDL.executeQueryWithReader(sql);

            return ds;
        }

        public DataSet getLeaveStatusDL(int employeeIndex)
        {
            CreateConnectionDL objDL = new CreateConnectionDL();
            objDL.createDbConnection();

            string sql = "SELECT leave_type.leave_name, leave_details.starting_date, leave_details.ending_date, leave_details.num_of_days,"
                + "leave_details.applying_date, leave_details.status_word "
                + "FROM leave_details, leave_type "
                + "WHERE leave_details.leave_index_pk = leave_type.leave_index_pk AND leave_details.employee_index_pk = " + employeeIndex;

            DataSet ds = new DataSet();
            ds = objDL.executeQueryWithReader(sql);

            return ds;
        }

        public DataSet getLeaveHistoryDL(int employeeIndex)
        {
            CreateConnectionDL objDL = new CreateConnectionDL();
            objDL.createDbConnection();

            string sql = "SELECT leave_type.leave_name, leave_details.starting_date, leave_details.ending_date, leave_details.num_of_days,"
                + "leave_details.applying_date, leave_details.leave_no_index "
                + "FROM leave_details, leave_type "
                + "WHERE leave_details.leave_index_pk = leave_type.leave_index_pk AND leave_details.status = 3"
                + " AND leave_details.employee_index_pk = " + employeeIndex;
  

            DataSet ds = new DataSet();
            ds = objDL.executeQueryWithReader(sql);

            return ds;
        }

        /**
         * <summary> Sending leave request to database</summary>
         * 
         * <param name="obj"> </param>
         * 
         **/ 

        public int leaveRequestDL1(LeaveCL obj)
        {
            //CreateConnectionDL objDL = new CreateConnectionDL();
            //objDL.createDbConnection();

            DateTime sd = Convert.ToDateTime(obj.StartingDate);
            DateTime ed = Convert.ToDateTime(obj.EndingDate);
            DateTime ad = DateTime.Now;

            /*SqlConnection con = new SqlConnection();
            con.ConnectionString = "server=sajid-pc\\mysqlexpress;database=eLeave;trusted_connection=true";*/

            CreateConnectionDL objDL = new CreateConnectionDL();
            SqlConnection con = new SqlConnection();
            con = objDL.createDbConnection1();

            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "leave_request";

            cmd.Parameters.Add("@employee_index", SqlDbType.Int).Value = obj.EmployeeIndex;
            cmd.Parameters.Add("@leave_index", SqlDbType.Int).Value = obj.LeaveIndex;
            cmd.Parameters.Add("@starting_date", SqlDbType.DateTime).Value = sd;
            cmd.Parameters.Add("@ending_date", SqlDbType.DateTime).Value = ed;
            cmd.Parameters.Add("@num_of_days", SqlDbType.Int).Value = obj.NumOfDays;
            cmd.Parameters.Add("@applying_date", SqlDbType.DateTime).Value = ad;
            cmd.Parameters.Add("@status", SqlDbType.Int).Value = obj.Status;
            cmd.Parameters.Add("@apply_remarks", SqlDbType.VarChar).Value = obj.Remarks;
            cmd.Parameters.Add("@status_word", SqlDbType.VarChar).Value = obj.StatusWord;

            cmd.Connection = con;

            con.Open();
            int status = cmd.ExecuteNonQuery();
            con.Close();

            //int status = 0;
            return status;
        }

        /**
         * <summary> Getting leave status from database</summary>
         * 
         * <param name="employeeIndex"> </param>
         **/ 

        public DataSet getLeaveStatusDL1(int employeeIndex)
        {
           /* SqlConnection con = new SqlConnection();
            con.ConnectionString = "server=User-pc\\sqlexpress;database=eLeave;trusted_connection=true";*/

            CreateConnectionDL objDL = new CreateConnectionDL();
            SqlConnection con = new SqlConnection();
            con = objDL.createDbConnection1();

            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "leave_status";

            cmd.Parameters.Add("@employee_index", SqlDbType.Int).Value = employeeIndex;

            cmd.Connection = con;
            con.Open();
            DataTable myTable = new DataTable();
            myTable.Load(cmd.ExecuteReader());
            ds.Tables.Add(myTable);

            con.Close();

            return ds;
        }

        /**
         * <summary> Getting leave history from database</summary>
         * 
         * <param name="employeeIndex"> </param>
         * 
         **/

        public DataSet getLeaveHistoryDL1(int employeeIndex)
        {
            /*SqlConnection con = new SqlConnection();
            con.ConnectionString = "server=User-pc\\sqlexpress;database=eLeave;trusted_connection=true";*/

            CreateConnectionDL objDL = new CreateConnectionDL();
            SqlConnection con = new SqlConnection();
            con = objDL.createDbConnection1();

            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "leave_history";

            cmd.Parameters.Add("@employee_index", SqlDbType.Int).Value = employeeIndex;

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