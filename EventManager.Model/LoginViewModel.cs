using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations.Schema;

namespace EventManager.Model
{
    [NotMapped]
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Username is Required.")]
        [RegularExpression(@"^(?=.{6,32}$)(?!.*[._-]{2})(?!.*[0-9]{5,})[a-zA-Z](?:[\w]*|[a-zA-Z\d\.]*|[a-zA-Z\d-]*)[a-zA-Z0-9]$", ErrorMessage = "It should start with alphabetical letters only, length should be 6 to 32 characters, it can contain alphabets, numbers, special characters . - _ and each special character should be followed by an Alpha-numeric !!!")]
        public string Username { get; set; }

        [Required(ErrorMessage = "Password is Required.")]
        [DataType(DataType.Password)]
        [RegularExpression(@"^(?=.*[a-z])(?!.*[\s])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,}$", ErrorMessage = "It should contain at least 8 characters, one digit, one upper case alphabet, one lower case alphabet, one special character which includes # $ ^ + = ! * ( ) @ % & and no white spaces !!!")]
        public string Password { get; set; }
    }
}
