using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using System.Data;

namespace Delivery_logistics_system.Pages
{
    public class AdmindriversModel : PageModel
    {
		private DB db { get; set; }

		public DataTable dt { get; set; }


		public AdminDriver Driver { get; set; }
		public List<AdminDriver> Drivers { get; set; } = new List<AdminDriver>();
		public AdmindriversModel(DB db)
		{
			this.db = db;
		}
		public void OnGet()
		{

			dt = db.Admin_SelectDrivers();
			for (int i = 0; i < dt.Rows.Count; i++)
			{
				Driver = new AdminDriver();

				Driver.DriverId = (int)dt.Rows[i]["DriverID"];
				Driver.DriverName = (string)dt.Rows[i]["DriverName"];
				Driver.plate_no = (string)dt.Rows[i]["Plate_No"];
				Driver.ShiftStart = (TimeSpan)dt.Rows[i]["Shift_start"];
				Driver.ShiftEnd = (TimeSpan)dt.Rows[i]["Shift_end"];
				Driver.Availability = (string)dt.Rows[i]["Availability"];

				Drivers.Add(Driver);
			}
		}
	}
}
