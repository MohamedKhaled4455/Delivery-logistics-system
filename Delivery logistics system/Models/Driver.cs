namespace Delivery_logistics_system.Models
{
    public class Driver
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; } 
        public string Phone { get; set; }
        public TimeSpan ShiftStart { get; set; }
        public TimeSpan ShiftEnd { get; set; }

        public int NumberOfDeliveries { get; set; }
    }
}
