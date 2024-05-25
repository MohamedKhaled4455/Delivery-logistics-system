using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using System.Data;

namespace Delivery_logistics_system.Pages
{
    public class AdminvehiclesModel : PageModel
    {
		private DB db { get; set; }

		public DataTable dt { get; set; }


		public AdminVehicle Vehicle { get; set; }
		public List<AdminVehicle> Vehicles { get; set; } = new List<AdminVehicle>();
		public AdminvehiclesModel(DB db)
		{
			this.db = db;
		}
		public void OnGet()
		{

			dt = db.Admin_SelectVehicles();
			for (int i = 0; i < dt.Rows.Count; i++)
			{
				Vehicle = new AdminVehicle();

				Vehicle.Type = (string)dt.Rows[i]["Type"];
				Vehicle.plate_no = (string)dt.Rows[i]["Plate_No"];
				Vehicle.coast = (Decimal)dt.Rows[i]["Cost"];
				Vehicle.year = (int)dt.Rows[i]["Year"];
				Vehicle.Model = (string)dt.Rows[i]["Model"];
				

				Vehicles.Add(Vehicle);
			}
		}
	}
}
