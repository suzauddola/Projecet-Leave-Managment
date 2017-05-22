namespace Attendance.Models
{
    public class AttendanceModel
    {
        public int SeqNo { get; set; }
        public string emp_id { get; set; }
        public string com_code { get; set; }
        public string login_time { get; set; }
        public string latitude { get; set; }
        public string longitude { get; set; }
        public string Address { get; set; }
        public string Station { get; set; }
        public int post { get; set; }
        
    }
}