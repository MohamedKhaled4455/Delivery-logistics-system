namespace Delivery_logistics_system.Models
{
	public class AdminDriver
	{
		public int DriverId { get; set; }
		public string DriverName { get; set; }
		public string plate_no { get; set; }
		public TimeSpan ShiftStart { get; set; }
		public TimeSpan ShiftEnd { get; set; }
		public string Availability {  get; set; }
	}
}
