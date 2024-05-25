using Delivery_logistics_system.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;

namespace Delivery_logistics_system.Pages.NoLayout
{
    public class loginModel : PageModel
    {

		[BindProperty]
		[Required(ErrorMessage = "Email is required.")]
		[EmailAddress(ErrorMessage = "Invalid email address.")]
		public string Email { get; set; }

		[BindProperty]
		[Required(ErrorMessage = "Password is required.")]
		[StringLength(100, MinimumLength = 6, ErrorMessage = "Password must be at least 6 characters long.")]
		[RegularExpression("^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$", ErrorMessage = "Password must contain both letters and numbers.")]
		public string Password { get; set; }


		private DB db { get; set; }

		public loginModel(DB db)
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

			if (db.ValidateLoginCredentials("Sender",Email, Password) == false)
			{
				ModelState.AddModelError(string.Empty, "Invalid Email or Password");
				return Page();
			}

			return RedirectToPage("/CustomerMainInterface");
		}
	}
}
