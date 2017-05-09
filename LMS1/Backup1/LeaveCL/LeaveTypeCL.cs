using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMS1.CL
{
    public class LeaveTypeCL
    {
        private int leaveIndex;
        private string leaveName;

        public int LeaveIndex
        {
            get { return leaveIndex; }
            set { leaveIndex = value; }
        }

        public string LeaveName
        {
            get { return leaveName; }
            set { leaveName = value; }
        }
    }
}