using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations.Schema;

namespace EventManager.Model
{
    public class BookingFlower
    {
        [Key]
        public int BookingFlowerID { get; set; }
        public int? FlowerID { get; set; }
        public int? Createdby { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? BookingID { get; set; }

        [NotMapped]
        public List<FlowerModel> FlowerList { get; set; }
    }
}
