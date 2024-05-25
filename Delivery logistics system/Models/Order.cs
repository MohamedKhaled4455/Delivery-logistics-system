namespace Delivery_logistics_system.Models
{
    public class Order
    {
        public int ID { get; set; }
        public DateTime Date { get; set; }
        public string Status { get; set; }
        public string Workflow { get; set; }
        public string Requirements { get; set; }
        public string ShipmentMethod { get; set; }
        public string PaymentMethod { get; set; }
        public int SenderID { get; set; }
        public int ReceiverID { get; set; }
        public int WarehouseID { get; set; }
        public int DriverID { get; set; }


        public string SenderName { get; set; }
        public string SenderPhone { get; set; }
        public string SenderEmail { get; set; }
        public string SenderAddress { get; set; }

        public string SenderZone { get; set; }
        public string ReceiverName { get; set; }
        public string ReceiverPhone { get; set; }
        public string ReceiverEmail { get; set; }
        public string ReceiverAddress { get; set; }
            
        public string ReceiverZone { get; set; }

    }
}
