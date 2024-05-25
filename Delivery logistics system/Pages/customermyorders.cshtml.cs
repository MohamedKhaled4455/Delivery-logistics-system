using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using Delivery_logistics_system.Pages.Customer;
using System.Data;

namespace Delivery_logistics_system.Pages
{
    public class customermyorders : PageModel
    {
        private readonly ILogger<customermyorders> _logger;
        private DB db { get; set; }

        public DataTable dt { get; set; }

        public Order O { get; set; }

        public List<Order> Orders { get; set; } = new List<Order>();

        public customermyorders(ILogger<customermyorders> logger, DB db)
        {
            _logger = logger;
            this.db = db;
        }
        public void OnGet()
        {
            dt = db.ReadTable(" ID , Shipment_method , Payment_method , Date , Status" , "[Order]" , "SenderID = 1");

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                O = new Order();

                O.ID = (int)dt.Rows[i]["ID"];
                O.ShipmentMethod = (string)dt.Rows[i]["Shipment_method"];
                O.PaymentMethod = (string)dt.Rows[i]["Payment_method"];
                O.Date = (DateTime)dt.Rows[i]["Date"];
                O.Status = (string)dt.Rows[i]["Status"];

                Orders.Add(O);
            }

        }

        public  void OnPost()
        {
            db.AddOrder(O);
            db.AddOrderResiver(O);
        }
    }
}
