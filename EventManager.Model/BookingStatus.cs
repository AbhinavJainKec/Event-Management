using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;

namespace EventManager.Model
{
    public class BookingStatus
    {
        public int BookingID { get; set; }
        public string Status { get; set; }
    }
}
