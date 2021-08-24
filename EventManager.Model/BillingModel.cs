using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations.Schema;

namespace EventManager.Model
{
    [NotMapped]
    public class BillingModel
    {
        public string BookingNo { get; set; }
        public int? BookingID { get; set; }
        public string BookingDate { get; set; }
        public int? TotalVenueCost { get; set; }
        public int? TotalEquipmentCost { get; set; }
        public int? TotalFoodCost { get; set; }
        public int? TotalFlowerCost { get; set; }
        public int? TotalLightCost { get; set; }
        public int? TotalAmount { get; set; }
    }
}
