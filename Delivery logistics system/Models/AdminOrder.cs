namespace Delivery_logistics_system.Models
{
    public class AdminOrder
    {
        public int Id { get; set; }
        public string SenderName { get; set; }
        public string DriverName { get; set; }
        public DateTime DateTime { get; set; }
        public string shipmentmethode { get; set; }
        public string Status { get; set;}
        public string Workflow { get; set;}
    }
}
