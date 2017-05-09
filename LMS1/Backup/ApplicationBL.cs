using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using LMS1.CL;
using LMS1.DL;

namespace LMS1.BL
{
    public class ApplicationBL
    {

        /**
         * <summary> Sending the request of leave to Data Layer</summary>
         * 
         * <param name="obj"> </param>
         * 
         **/ 
        public int leaveRequestBL(LeaveCL obj)
        {
            ApplicationDL objDL = new ApplicationDL();
            int status = objDL.leaveRequestDL1(obj);
            return status;
        }

        /**
         * <summary> Getting the available day of an employee</summary>
         * 
         * <param name="employeeIndex"> </param>
         * 
         **/ 

        public DataSet getAvailableDayBL(int employeeIndex)
        {
            ApplicationDL objDL = new ApplicationDL();
            DataSet ds = new DataSet();
            ds = objDL.getAvailableDayDL(employeeIndex);

            // int availableDay = (int) ds.Tables[0].Rows[0]["available_day"];

            return ds;
        }

        /**
         * <summary> Getting leave history of the employee</summary>
         * 
         * <param name="employeeIndex"> </param>
         * 
         **/ 
        public DataSet getLeaveHistoryBL(int employeeIndex)
        {
            ApplicationDL objDL = new ApplicationDL();
            DataSet ds = new DataSet();

            ds = objDL.getLeaveHistoryDL1(employeeIndex);
            return ds;
        }

        /**
         * <summary> Getting leave status of the employee</summary>
         * 
         * <param name="employeeIndex"> </param>
         */

        public DataSet getLeaveStatusBL(int employeeIndex)
        {
            ApplicationDL objDL = new ApplicationDL();
            DataSet ds = new DataSet();
            ds = objDL.getLeaveStatusDL1(employeeIndex);

            return ds;
        }
    }
}