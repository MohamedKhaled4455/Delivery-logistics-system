using Delivery_logistics_system.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Data;

namespace Delivery_logistics_system.Pages
{
    public class DriverAddModel : PageModel
    {
        [BindProperty]
        public int OrderId { get; set; }

        private readonly ILogger<DriverAddModel> _logger;

        private DB db { get; set; }
        public DataTable dt { get; set; }
        public Order order { get; set; }

        public List<Order> orders { get; set; } = new List<Order>();

        public DriverAddModel(ILogger<DriverAddModel> logger, DB db)
        {
            _logger = logger;
            this.db = db;
        }

        public void OnGet()
        {
            dt = db.ReadTable(" [Order].[ID],[Order].[Date],[Order].[Requirements],[Order].WarehouseID, Sender.Zone as [Sender_Zone], Receiver.Zone as [Receiver_Zone]",
                "[Order] inner join Receiver on [Order].ReceiverID = Receiver.ID inner join Sender on [Order].SenderID = Sender.ID", "DriverID is NULL and [Status] = 'Pending'");


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                order = new Order();

                order.ID = (int)dt.Rows[i]["ID"];
                order.Date = (DateTime)dt.Rows[i]["Date"];
                order.Requirements = (string)dt.Rows[i]["Requirements"];
                order.SenderZone = (string)dt.Rows[i]["Sender_Zone"];
                order.ReceiverZone = (string)dt.Rows[i]["Receiver_Zone"];
                order.WarehouseID = (int)dt.Rows[i]["WarehouseID"];

                orders.Add(order);
            }

        }
        public IActionResult OnPostQuickAdd()
        {
            db.UpdateDriverOrders(OrderId,1); // replace 1 with The Driver ID from session

            return RedirectToPage("/DriverAdd");
        }

    }
}

