using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using System.Data;

namespace Delivery_logistics_system.Pages
{
    public class AdminordersModel : PageModel
    {
        private DB db { get; set; }

        public DataTable dt { get; set; }


        public AdminOrder order { get; set; }
        public List<AdminOrder> Orders { get; set; } = new List<AdminOrder>();

        public AdminordersModel(DB db)
        {
            this.db = db;
        }
        public void OnGet()
        {

            dt = db.Admin_SelectOrders();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                order = new AdminOrder();

                order.Id = (int)dt.Rows[i]["OrderID"];
                order.SenderName = (string)dt.Rows[i]["SenderName"];
                order.DriverName = (string)dt.Rows[i]["DriverName"];
                order.DateTime = (DateTime)dt.Rows[i]["Date"];
                order.shipmentmethode = (string)dt.Rows[i]["Shipment_method"];
                order.Status = (string)dt.Rows[i]["OrderStatus"];
                order.Workflow = (string)dt.Rows[i]["Workflow"];

                Orders.Add(order);
            }
        }
    }
}
