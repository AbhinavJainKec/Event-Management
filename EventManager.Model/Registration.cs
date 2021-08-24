using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;

namespace EventManager.Model
{
    public partial class Registration
    {
        [Key]
        public int ID { get; set; }

        [Required(ErrorMessage = "Name Required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Address Required")]
        public string Address { get; set; }

        [CityValidation]
        [Required(ErrorMessage = "City Required")]
        public int? City { get; set; }

        [StateValidation]
        [Required(ErrorMessage = "State Required")]
        public int? State { get; set; }

        [Required(ErrorMessage = "Country Required")]
        [CountryValidation]
        public int? Country { get; set; }

        [Required(ErrorMessage = "Phone Number is Required.")]
        [Phone]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^([0|\+[0-9]{1,5})?([0-9]{10})$", ErrorMessage = "It should be a 10-Digit Phone number !!!")]
        public string Mobileno { get; set; }

        [Required(ErrorMessage = "Email Address is Required.")]
        [EmailAddress]
        [DataType(DataType.EmailAddress)]
        [RegularExpression(@"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$", ErrorMessage = "It should be like name@domain.com, etc !!!")]
        public string EmailID { get; set; }

        [Required(ErrorMessage = "Username is Required.")]
        [RegularExpression(@"^(?=.{6,32}$)(?!.*[._-]{2})(?!.*[0-9]{5,})[a-zA-Z](?:[\w]*|[a-zA-Z\d\.]*|[a-zA-Z\d-]*)[a-zA-Z0-9]$", ErrorMessage = "It should start with alphabetical letters only, length should be 6 to 32 characters, it can contain alphabets, numbers, special characters . - _ and each special character should be followed by an Alpha-numeric !!!")]
        public string Username { get; set; }

        [Required(ErrorMessage = "Password is Required.")]
        [DataType(DataType.Password)]
        [RegularExpression(@"^(?=.*[a-z])(?!.*[\s])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,}$", ErrorMessage = "It should contain at least 8 characters, one digit, one upper case alphabet, one lower case alphabet, one special character which includes # $ ^ + = ! * ( ) @ % & and no white spaces !!!")]
        public string Password { get; set; }

        [Required(ErrorMessage = "Password Confirmation is Required.")]
        [Compare("Password")]
        [DataType(DataType.Password)]
        [RegularExpression(@"^(?=.*[a-z])(?!.*[\s])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,}$", ErrorMessage = "It should contain at least 8 characters, one digit, one upper case alphabet, one lower case alphabet, one special character which includes # $ ^ + = ! * ( ) @ % & and no white spaces !!!")]
        public string ConfirmPassword { get; set; }

        [Required(ErrorMessage = "Gender is Required.")]
        [RegularExpression("^(?:m|M|male|Male|f|F|female|Female|t|T|trans|Trans)$", ErrorMessage = "It should be either Male, Female or Trans !!!")]
        public string Gender { get; set; }

        [Required(ErrorMessage = "Date Of Birth is Required.")]
        [DataType(DataType.Date)]
        //[RegularExpression(@"^(\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01]))|((0?[1-9]|[12][0-9]|3[01])\-(0?[1-9]|1[012])\-\d{4})$", ErrorMessage = "It should be in DD/MM/YYYY format only !!!")]
        public DateTime? Birthdate { get; set; }

        public int? RoleID { get; set; }

        public DateTime? CreatedOn { get; set; }
    }

    public class CountryValidation : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            string Message = string.Empty;
            if (Convert.ToString(value) == "0")
            {
                Message = "Choose Country";
                return new ValidationResult(Message);
            }
            else
            {
                return ValidationResult.Success;
            }
        }
    }

    public class StateValidation : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            string Message = string.Empty;
            if (Convert.ToString(value) == "0")
            {
                Message = "State Required";
                return new ValidationResult(Message);
            }
            else
            {
                return ValidationResult.Success;
            }
        }
    }

    public class CityValidation : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            string Message = string.Empty;
            if (Convert.ToString(value) == "0")
            {
                Message = "City Required";
                return new ValidationResult(Message);
            }
            else
            {
                return ValidationResult.Success;
            }
        }
    }
}
