using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations.Schema;

namespace EventManager.Model
{
    public class BookingDetails
    {
        [Key]
        public int BookingID { get; set; }
        public string BookingNo { get; set; }
        public DateTime? BookingDate { get; set; }
        public int? Createdby { get; set; }
        public DateTime? CreatedDate { get; set; }
        public string BookingApproval { get; set; }
        public DateTime? BookingApprovalDate { get; set; }
        public string BookingCompletedFlag { get; set; }
    }

    [NotMapped]
    public class BookingDetailTemp
    {
        public int BookingID { get; set; }
        public string BookingNo { get; set; }
        public string BookingDate { get; set; }
        public string Createdby { get; set; }
        public string CreatedDate { get; set; }
        public string BookingApproval { get; set; }
        public string BookingApprovalDate { get; set; }
    }
}
