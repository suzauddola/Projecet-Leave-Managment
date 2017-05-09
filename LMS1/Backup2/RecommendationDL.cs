using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using LMS1.CL;

namespace LMS1.DL
{
    public class RecommendationDL
    {
        public DataSet getRecommendationList(int superiorId)
        {
            CreateConnectionDL objDL = new CreateConnectionDL();
            objDL.createDbConnection();

            string sql = "SELECT * FROM employee_info, faculty_info, leave_type, leave_details"
                + " WHERE employee_info.employee_index_pk = faculty_info.employee_index_pk "
                + "AND employee_info.employee_index_pk = leave_details.employee_index_pk "
                + "AND leave_details.leave_index_pk = leave_type.leave_index_pk "
                + "AND leave_details.status = 1 AND faculty_info.superior_id = "
                + superiorId;

            DataSet ds = new DataSet();
            ds = objDL.executeQueryWithReader(sql);

            return ds;
        }

        /**
         * <summary> Getting the list of employee needed to be recommended from database</summary>
         * 
         * <param name="superiorId"> </param>
         * 
         **/

        public DataSet getRecommendationList1(int superiorId)
        {
           // SqlConnection con = new SqlConnection();
            //con.ConnectionString = "server=User-pc\\sqlexpress;database=eLeave;trusted_connection=true";

            CreateConnectionDL objDL = new CreateConnectionDL();
            SqlConnection con = new SqlConnection();
            con = objDL.createDbConnection1();

            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "recommendation_list";

            cmd.Parameters.Add("@superior_id", SqlDbType.Int).Value = superiorId;

            cmd.Connection = con;
            con.Open();
            DataTable myTable = new DataTable();
            myTable.Load(cmd.ExecuteReader());
            ds.Tables.Add(myTable);

            con.Close();

            return ds;
        }

        /**
         * <summary> Approving the leave with the corresponding leaveIndex</summary>
         * 
         * <param name="leaveIndex"> </param>
         * 
         **/ 

        public void recommendLeaveDL(int leaveIndex)
        {
            CreateConnectionDL objDL = new CreateConnectionDL();
            SqlConnection con = new SqlConnection();
            con = objDL.createDbConnection1();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "make_recommend";
            cmd.Parameters.Add("@leave_index_pk", SqlDbType.Int).Value = leaveIndex;

            try
            {
                cmd.Connection = con;

                con.Open();
                int status = cmd.ExecuteNonQuery();
            }
            catch { }
            finally
            {
                con.Close();
            }
        }

        /**
         * <summary> Denying the leave of the corresponding leaveIndex</summary>
         * 
         * <param name="leaveIndex"> </param>
         * 
         **/ 

        public void denyLeaveDL(int leaveIndex)
        {
            CreateConnectionDL objDL = new CreateConnectionDL();
            SqlConnection con = new SqlConnection();
            con = objDL.createDbConnection1();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "deny_leave";
            cmd.Parameters.Add("@leave_index_pk", SqlDbType.Int).Value = leaveIndex;

            try
            {
                cmd.Connection = con;

                con.Open();
                int status = cmd.ExecuteNonQuery();
            }
            catch
            {
            }
            finally
            {
                con.Close();
            }
        }
    }
}