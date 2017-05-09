using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMS1.CL
{
    public class LeaveCL
    {
        private int index;
        private int employeeIndex;
        private int leaveIndex;
        private string startingDate;
        private string endingDate;
        private int numOfDays;
        private string applyingDate;
        private int status;
        private string remarks;
        private string statusWord;

        public int Index
        {
            get { return index; }
            set { index = value;}
        }

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

        public string StartingDate
        {
            get {return startingDate;}
            set {startingDate = value;}
        }

        public string EndingDate
        {
            get { return endingDate; }
            set { endingDate = value; }
        }

        public int NumOfDays
        {
            get { return numOfDays; }
            set { numOfDays = value;}
        }

        public string ApplyingDate
        {
            get { return applyingDate; }
            set { applyingDate = value; }
        }

        public int Status
        {
            get { return status; }
            set { status = value; }
        }

        public string Remarks
        {
            get { return remarks; }
            set { remarks = value; }
        }

        public string StatusWord
        {
            get { return statusWord; }
            set { statusWord = value; }
        }
    }
}