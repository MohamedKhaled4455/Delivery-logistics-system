using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using System.Data;

namespace Delivery_logistics_system.Pages.Customer
{
    public class MainInterfaceModel : PageModel
    {
        private readonly ILogger<MainInterfaceModel> _logger;
        private DB db { get; set; }

        public DataTable dt { get; set; }

        public Order order { get; set; }

        public List<Order> Orders { get; set; } = new List<Order>();

        public MainInterfaceModel (ILogger<MainInterfaceModel> logger , DB db)
        {
            _logger = logger;
            this.db = db;
        }

        public void OnGet()
        {
            dt = db.ReadTable(" ID , Shipment_method , Payment_method , Date , Status", "[Order]", "SenderID = 1");

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                order = new Order();

                order.ID = (int)dt.Rows[i]["ID"];
                order.ShipmentMethod = (string)dt.Rows[i]["Shipment_method"];
                order.PaymentMethod = (string)dt.Rows[i]["Payment_method"];
                order.Date = (DateTime)dt.Rows[i]["Date"];
                order.Status = (string)dt.Rows[i]["Status"];

                Orders.Add(order);
            }

        }
    }
}
