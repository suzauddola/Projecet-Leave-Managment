using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMS1.CL
{
    public class LeaveAvailabilityCL
    {
        private int employeeIndex;
        private int leaveIndex;
        private int availableDay;

        public int EmployeeIndex
        {
            get { return employeeIndex; }
            set { employeeIndex = value; }
        }

        public int LeaveIndex
        {
            get { return leaveIndex; }
            set { leaveIndex = value; }
        }

        public int AvailableDay
        {
            get { return availableDay; }
            set { availableDay = value; }
        }
    }
}