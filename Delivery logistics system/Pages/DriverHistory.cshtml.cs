using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using System.Data;



namespace Delivery_logistics_system.Pages
{
    public class DriverHistoryModel : PageModel
    {
        private readonly ILogger<DriverHistoryModel> _logger;

        private DB db { get; set; }
        public DataTable dt { get; set; }
        public Order order { get; set; }

        public List<Order> orders { get; set; } = new List<Order>();

        public DriverHistoryModel(ILogger<DriverHistoryModel> logger, DB db)
        {
            _logger = logger;
            this.db = db;
        }

        public void OnGet()
        {
            dt = db.ReadTable("[ID],[Date],[Shipment_method],[Payment_method],[Requirements],[Status]", "[Order]", "DriverID = 1 and [Status] = 'Delivered';");


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                order = new Order();
                order.ID = (int)dt.Rows[i]["ID"];
                order.Date = (DateTime)dt.Rows[i]["Date"];
                order.ShipmentMethod = (string)dt.Rows[i]["Shipment_method"];
                order.PaymentMethod = (string)dt.Rows[i]["Payment_method"];
                order.Requirements = (string)dt.Rows[i]["Requirements"];
                order.Status = (string)dt.Rows[i]["Status"];

                orders.Add(order);
            }

        }
        public void OnPost()
        {

        }
    }

}

