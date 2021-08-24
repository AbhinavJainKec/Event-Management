using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations.Schema;

namespace EventManager.Model
{
    [NotMapped]
    public class ChangePasswordModel
    {
        [Required(ErrorMessage = "Password is Required.")]
        [DataType(DataType.Password)]
        [RegularExpression(@"^(?=.*[a-z])(?!.*[\s])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,}$", ErrorMessage = "It should contain at least 8 characters, one digit, one upper case alphabet, one lower case alphabet, one special character which includes # $ ^ + = ! * ( ) @ % & and no white spaces !!!")]
        public string Password { get; set; }

        [Required(ErrorMessage = "Password Confirmation is Required.")]
        [Compare("Password")]
        [DataType(DataType.Password)]
        [RegularExpression(@"^(?=.*[a-z])(?!.*[\s])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,}$", ErrorMessage = "It should contain at least 8 characters, one digit, one upper case alphabet, one lower case alphabet, one special character which includes # $ ^ + = ! * ( ) @ % & and no white spaces !!!")]
        public string ConfirmPassword { get; set; }

        [Required(ErrorMessage = "New Password is Required.")]
        [DataType(DataType.Password)]
        [RegularExpression(@"^(?=.*[a-z])(?!.*[\s])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,}$", ErrorMessage = "It should contain at least 8 characters, one digit, one upper case alphabet, one lower case alphabet, one special character which includes # $ ^ + = ! * ( ) @ % & and no white spaces !!!")]
        public string NewPassword { get; set; }
    }
}
