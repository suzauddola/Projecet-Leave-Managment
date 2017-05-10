using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eLeave.Models
{
    public class MyEnum
    {
        public enum EmployeeStatus
        {
            Applicant = 1,
            Recommender,
            Approver
        }
        public enum ApplicationStatus
        {
            Applied=1,
            Recommanded,
            Approved,
            Denied
        }
    }
}