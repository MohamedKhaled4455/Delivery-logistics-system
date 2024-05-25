using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using System.Data;



namespace Delivery_logistics_system.Pages
{
    public class DriverProfileModel : PageModel
    {
        private readonly ILogger<DriverProfileModel> _logger;

        private DB db { get; set; }
        public DataTable dt { get; set; }
        public DataRow dr { get; set; }
        public Driver driver { get; set; }

        public DriverProfileModel(ILogger<DriverProfileModel> logger, DB db)
        {
            _logger = logger;
            this.db = db;
        }

        public void OnGet()
        {
            dr = db.ReadRow("ID, Name, Email, Phone, Shift_start, Shift_end", "Driver", "ID = 1");

            driver = new Driver
            {
                ID = (int)(dr["ID"]),
                Name = (string)dr["Name"],
                Email = (string)dr["Email"],
                Phone = (string)dr["Phone"],
                ShiftStart = (TimeSpan)dr["Shift_start"],
                ShiftEnd = (TimeSpan)dr["Shift_end"],
            };  

        }
        public void OnPost()
        {

        }
    }

}
