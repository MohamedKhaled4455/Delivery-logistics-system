namespace Delivery_logistics_system.Models
{
    public class AdminProfile
    {
        public string AdminName { get; set; }
        public int AdminID { get; set; }
        public int AdminAge { get; set; }
        public TimeSpan ShiftStart { get; set; }
        public TimeSpan ShiftEnd { get; set; }
    }
}
