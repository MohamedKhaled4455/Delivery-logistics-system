using Delivery_logistics_system.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;
using System.Data;

namespace Delivery_logistics_system.Pages
{
    public class AdminprofileChangePassModel : PageModel
    {
        [BindProperty]
        [Required(ErrorMessage = "New Password is required.")]
        [DataType(DataType.Password)]
        public string NewPassword { get; set; }

        [BindProperty]
        [Required(ErrorMessage = "Confirm Password is required.")]
        [DataType(DataType.Password)]
        [Compare("NewPassword", ErrorMessage = "The new password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }


        private DB db { get; set; }



        public AdminprofileChangePassModel(DB db)
        {
            this.db = db;
        }
        public void OnGet()
        {

        }
        public IActionResult OnPost()
        {
            if (!ModelState.IsValid || NewPassword == null || !IsValidPassword(NewPassword))
            {
                if (NewPassword == null)
                {
                    ModelState.AddModelError("NewPassword", "New Password is required.");
                }
                else if (!IsValidPassword(NewPassword))
                {
                    ModelState.AddModelError("NewPassword", "Password must be at least 6 characters long and contain both numbers and letters.");
                }
                return Page();
            }

            db.UpdateAdminPass(NewPassword, 1);// parameter ID should be taken from the session

			return RedirectToPage("/Adminprofile"); 
        }
        private bool IsValidPassword(string password)
        {
            if (string.IsNullOrEmpty(password) || password.Length < 6)
            {
                return false;
            }

            bool hasNumber = false;
            bool hasLetter = false;

            foreach (char c in password)
            {
                if (char.IsDigit(c))
                {
                    hasNumber = true;
                }
                else if (char.IsLetter(c))
                {
                    hasLetter = true;
                }

                if (hasNumber && hasLetter)
                {
                    return true;
                }
            }

            return false;
        }
    }
}
