using Delivery_logistics_system.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Delivery_logistics_system.Pages
{
    public class visitorcontactModel : PageModel
    {
        [BindProperty]
        public ComplainAndFeedback co { get; set; }
        private DB db { get; set; }
        public visitorcontactModel(DB db)
        {
            this.db = db;
        }
        public void OnGet()
        {
        }
        public IActionResult OnPost()
        {
            db.addCom(co);
            return RedirectToPage("/visitorcontact");
        }
    }
}

