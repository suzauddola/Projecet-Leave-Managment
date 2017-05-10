using System;
using System.Data;
using System.Data.SqlClient;

namespace eLeave.Getway
{
    public class WebConfig
    {
        public SqlConnection Connection = new SqlConnection();
        public void CreateDbConnection()
        {
            Connection.ConnectionString = "server=DESKTOP-714C7LA; database=eLeave;trusted_connection=true";
        }
        public SqlConnection ConnectionString()
        {
            Connection.ConnectionString = "server=DESKTOP-714C7LA;database=eLeave;trusted_connection=true";
            return Connection;
        }
        public int ExecuteQuery(string sql)
        {
            var status = -1;
            try
            {
                Connection.Open();
                SqlCommand cmd = new SqlCommand(sql,Connection);
                status = cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
            finally { Connection.Close();}
            return status;
        }
        public DataSet ExecuteQueryWithReader(string sql)
        {
            DataSet ds = new DataSet();
            try
            {
                Connection.Open();
                SqlDataAdapter da = new SqlDataAdapter(sql, Connection);
                da.Fill(ds);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
            finally { Connection.Close();}
            return ds;
        }
    }
}