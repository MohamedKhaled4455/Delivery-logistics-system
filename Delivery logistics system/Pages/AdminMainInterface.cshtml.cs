using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;

namespace Delivery_logistics_system.Pages
{
    public class AdminMainInterfaceModel : PageModel
    {
        private DB db {  get; set; }
        public int TotalOrder { get; set; }
        public int ActiveDrivers { get; set; }
        public int UnActiveDrivers { get; set; }
        public int MangersNum { get; set; }

        public int VehicleNum { get; set; }
        public int WarehousesNum { get; set; }



        public AdminMainInterfaceModel(DB db) { 
          this.db = db; 
        }
        public void OnGet()
        {
           TotalOrder= db.Admin_Home_Nums("[Order]");
            ActiveDrivers = db.Admin_Home_DriveActivity("Available");
            UnActiveDrivers = db.Admin_Home_DriveActivity("Unavailable");
            MangersNum = db.Admin_Home_Nums("Admin");
            VehicleNum = db.Admin_Home_Nums("Vehicle");
            WarehousesNum = db.Admin_Home_Nums("Warehouse");
        }
    }
}
