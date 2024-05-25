using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;

namespace Delivery_logistics_system.Models
{
    [BindProperties]
    public class Sender
    {
        public string Name { get; set; }
	

		[Required]
        public string phone { get; set; }
        	

        [Required(ErrorMessage = "Email is required.")]
        [EmailAddress(ErrorMessage = "Invalid email address.")]
        public string Email { get; set; }
        [Required]

        public string Address { get; set; }

        [StringLength(100, MinimumLength = 6, ErrorMessage = "Password must be at least 6 characters long.")]
        [RegularExpression("^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$", ErrorMessage = "Password must contain both letters and numbers.")]
        public string Password { get; set; }
        [Required]

        public string Zone { get; set; }


    }
}
