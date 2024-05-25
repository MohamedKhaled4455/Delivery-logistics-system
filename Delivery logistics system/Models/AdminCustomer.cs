namespace Delivery_logistics_system.Models
{
	public class AdminCustomer
	{
		public int CustomerId { get; set; }
		public string CustomerName { get; set; }

		public string CustomerEmail { get; set; }	

		public string CustomerAdress { get; set; }

		public int NumOfOrders { get; set; }
	}
}
