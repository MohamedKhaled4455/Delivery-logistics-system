using Delivery_logistics_system.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Data;

namespace Delivery_logistics_system.Pages
{
    public class AdmincustomersModel : PageModel
    {
		private DB db { get; set; }

		public DataTable dt { get; set; }


		public AdminCustomer Customer { get; set; }
		public List<AdminCustomer> Customers { get; set; } = new List<AdminCustomer>();

		public AdmincustomersModel(DB db)
		{
			this.db = db;
		}
		public void OnGet()
		{

			dt = db.Admin_SelectCustomers();
			for (int i = 0; i < dt.Rows.Count; i++)
			{
				Customer = new AdminCustomer();

				Customer.CustomerId = (int)dt.Rows[i]["SenderID"];
				Customer.CustomerName = (string)dt.Rows[i]["SenderName"];
				Customer.CustomerEmail = (string)dt.Rows[i]["SenderEmail"];
				Customer.CustomerAdress = (string)dt.Rows[i]["SenderAddress"];
				Customer.NumOfOrders = (int)dt.Rows[i]["NumOfOrders"];

				Customers.Add(Customer);
			}
		}
	}
}
