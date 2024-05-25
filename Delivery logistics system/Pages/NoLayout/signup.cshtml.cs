using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Delivery_logistics_system.Models;
using System.Reflection;
using System.ComponentModel.DataAnnotations;
namespace Delivery_logistics_system.Pages.NoLayout
{
	public class signupModel : PageModel
	{
		[BindProperty]
		[Required]
		public string FirstName { get; set; }
		[BindProperty]
        [Required]
        public string LastName { get; set; }
		public string FullName { get; set; }
		[BindProperty]
		public Sender S { get; set; }
		private DB db { get; set; }
		public signupModel(DB db)
		{
			this.db = db;
		}

		public void OnGet()
		{
		}
		public IActionResult OnPost()
		{
            if (!ModelState.IsValid)
            {
                return Page();
            }
			
			FullName = $"{FirstName} {LastName}";
                db.AddSender(FullName, S);

			return RedirectToPage("/CustomerMainInterface");
		}
	}
}
