using Delivery_logistics_system.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Data;



namespace Delivery_logistics_system.Pages
{
    public class profileModel : PageModel
    {
        private readonly ILogger<profileModel> _logger;

        private DB db { get; set; }
        public DataTable dt { get; set; }
        public DataRow dr { get; set; }

        public Profile C { get; set; }

        public profileModel(ILogger<profileModel> logger, DB db)
        {
            _logger = logger;
            this.db = db;
        }

        public void OnGet()
        {
            dr = db.ReadRow("ID, Name, Email, Phone, Address", "Sender", "ID = 1");

            C = new Profile
            {
                ID = (int)dr["ID"],
                Name = (string)dr["Name"],
                Email = (string)dr["Email"],
                Phone = (string)dr["Phone"],
                Address = (String)dr["Address"],

            };

        }
        public void OnPost()
        {

        }
    }

}