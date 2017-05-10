
using System.Data;
using eLeave.Getway;
using eLeave.Models;

namespace eLeave.DLL
{
    public class LoginLogic
    {
        public UserLogin CheckUserLogic(UserLogin objLogin)
        {
            Login dataLogin = new Login();
            DataSet ds = new DataSet();
            ds = dataLogin.CheckUserDl(objLogin);

            if (ds.Tables[0].Rows.Count == 0)
            {
                objLogin.Login = false;
            }
            else
            {
                objLogin.Login = true;
                objLogin.Privilege = (int)ds.Tables[0].Rows[0]["privilege"];
                objLogin.EmployeeIndex = (int)ds.Tables[0].Rows[0]["employee_index_pk"];
            }

            return objLogin;
        }

        public string GetNameBl(int employeeIndex)
        {
            Login objDl = new Login();
            DataSet ds = new DataSet();

            ds = objDl.GetNameDl(employeeIndex);
            string name = "User";
            if (ds.Tables[0].Rows.Count != 0)
            {
                name = ds.Tables[0].Rows[0]["name"].ToString();
            }
            return name;
        }
    }
}