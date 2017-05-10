using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using LMS1.CL;
using LMS1.DL;

namespace LMS1.BL
{
    public class UserLoginBL
    {
        /**
         * <summary> Checking user authentication & assigning privilege</summary>
         * 
         * <param name="obj"> An instane of UserLoginCL, which contains
         * the login information of an user.</param>
         **/
        public UserLoginCL checkUserBL(UserLoginCL obj)
        {
            UserLoginDL userDL = new UserLoginDL();
            DataSet ds = new DataSet();
            ds = userDL.checkUserDL1(obj);

            if (ds.Tables[0].Rows.Count == 0)
            {
                obj.Login = false;
            }
            else
            {
                obj.Login = true;
                obj.Privilege = (int)ds.Tables[0].Rows[0]["privilege"];
                obj.EmployeeIndex = (int)ds.Tables[0].Rows[0]["employee_index_pk"];
            }

            return obj;
        }

        /**
         * <summary> Getting the name of user</summary>
         * 
         * <param name="employeeIndex"> The employee_index of the user</param>
         * 
         **/

        public string getNameBL(int employeeIndex)
        {
            UserLoginDL objDL = new UserLoginDL();
            DataSet ds = new DataSet();

            ds = objDL.getNameDL(employeeIndex);

            string name = "User";
            if (ds.Tables[0].Rows.Count != 0)
            {
                name = (string) ds.Tables[0].Rows[0]["name"];

                return name;
            }
            return name;
        }
    }
}