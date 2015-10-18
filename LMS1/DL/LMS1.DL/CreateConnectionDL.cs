using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace LMS1.DL
{
    public class CreateConnectionDL
    {
        public SqlConnection con = new SqlConnection();
        
        public void createDbConnection()
        {
            con.ConnectionString = "server=sajid-pc\\mysqlexpress;database=eLeave;trusted_connection=true";
        }

        /**
         * <summary> Initializing the ConnectionString of database</summary>
         * 
         **/ 

        public SqlConnection createDbConnection1()
        {
            con.ConnectionString = "server=sajid-pc\\mysqlexpress;database=eLeave;trusted_connection=true";
            return con;
        }

        /**
         * <summary> Executing SQL</summary>
         * 
         * <param name="sql"> </param>
         * <returns> an integer</returns>
         * 
         **/ 

        public int executeQuery(string sql)
        {
            //createDbConnection();
            int status = -1;
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                status = cmd.ExecuteNonQuery();
            }
            catch
            {
                
            }
            finally
            {
                con.Close();
            }

            return status;
        }

        /**
         * <summary> Executing SQL</summary>
         * 
         * <param name="sql"> </param>
         * <returns> a dataset</returns>
         * 
         **/ 
        public DataSet executeQueryWithReader(string sql)
        {
            DataSet ds = new DataSet();
            try
            {
                con.Open();
                // SqlCommand cmd = new SqlCommand(sql, con);
                //SqlDataReader reader = cmd.ExecuteReader();
                SqlDataAdapter da = new SqlDataAdapter(sql, con);

                da.Fill(ds);
            }
            catch
            {
            }
            finally
            {
                con.Close();
            }

            return ds;            
        }
    }
}