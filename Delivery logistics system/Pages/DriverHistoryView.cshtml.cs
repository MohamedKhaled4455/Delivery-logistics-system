using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using System.Data;

namespace Delivery_logistics_system.Pages
{
    public class DriverHistoryViewModel : PageModel
    {
        private readonly ILogger<DriverHistoryViewModel> _logger;

        private DB db { get; set; }
        public DataRow dr { get; set; }
        public Order order { get; set; }

        public List<Order> orders { get; set; } = new List<Order>();

        public DriverHistoryViewModel(ILogger<DriverHistoryViewModel> logger, DB db)
        {
            _logger = logger;
            this.db = db;
        }
        public void OnGet(int orderId)
        {
            var dr = db.ReadRow(
                "[Order].[ID], [Order].[Date], [Order].[Requirements], [Order].[Shipment_method], [Order].[Payment_method], [Order].WarehouseID, [Order].[Status], [Order].[SenderID], [Order].[ReceiverID], " +
                "Sender.Name as SenderName, Sender.Phone as SenderPhone, Sender.Email as SenderEmail, Sender.Address as SenderAddress, " +
                "Receiver.Name as ReceiverName, Receiver.Phone as ReceiverPhone, Receiver.Email as ReceiverEmail, Receiver.Address as ReceiverAddress",
                "[Order] inner join Receiver on [Order].ReceiverID = Receiver.ID inner join Sender on [Order].SenderID = Sender.ID",
                $"[Order].ID = {orderId}");

            order = new Order
            {
                ID = (int)(dr["ID"]),
                Date = (DateTime)dr["Date"],
                Requirements = (string)dr["Requirements"],
                ShipmentMethod = (string)dr["Shipment_method"],
                PaymentMethod = (string)dr["Payment_method"],
                WarehouseID = (int)dr["WarehouseID"],
                Status = (string)dr["Status"],
                SenderID = (int)dr["SenderID"],
                ReceiverID = (int)dr["ReceiverID"],
                SenderName = (string)dr["SenderName"],
                SenderPhone = (string)dr["SenderPhone"],
                SenderEmail = (string)dr["SenderEmail"],
                SenderAddress = (string)dr["SenderAddress"],
                ReceiverName = (string)dr["ReceiverName"],
                ReceiverPhone = (string)dr["ReceiverPhone"],
                ReceiverEmail = (string)dr["ReceiverEmail"],
                ReceiverAddress = (string)dr["ReceiverAddress"]
            };
        }
    }

}

