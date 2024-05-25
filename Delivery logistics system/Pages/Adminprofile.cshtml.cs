using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using System.Data;

namespace Delivery_logistics_system.Pages
{
    public class AdminprofileModel : PageModel
    {
        private DB db { get; set; }

        public DataTable dt { get; set; }


        public AdminProfile Profile { get; set; }
        public AdminprofileModel(DB db)
        {
            this.db = db;
        }
        public void OnGet()
        {

            dt = db.Admin_SelectProfile(1);// parameter ID should be taken from the session
           
                Profile = new AdminProfile();

            Profile.AdminName = (string)dt.Rows[0]["Name"];
            Profile.AdminID = (int)dt.Rows[0]["ID"];
            Profile.AdminAge = (int)dt.Rows[0]["Age"];
            Profile.ShiftStart = (TimeSpan)dt.Rows[0]["Shift_start"];
            Profile.ShiftEnd = (TimeSpan)dt.Rows[0]["Shift_end"];
               

           
        }
    }
}
