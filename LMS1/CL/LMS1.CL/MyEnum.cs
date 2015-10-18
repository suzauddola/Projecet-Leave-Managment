using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMS1.CL
{
    public class MyEnum
    {
        public enum EmployeeStatus
        {
            Applicant = 1,
            Recommender,
            Approver
        };

        public enum ApplicationStatus
        {
            Applied = 1,
            Recommended,
            Approved,
            Denied
        };
    }
}