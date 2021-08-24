using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;

namespace EventManager.Model
{
    public class CompleteBookingModel
    {
        public Venue BookingVenue { get; set; }
        public List<Equipment> BookingEquipment { get; set; }
        public List<Food> BookingFood { get; set; }
        public List<Flower> BookingFlower { get; set; }
        public List<Light> BookingLight { get; set; }
        public BillingModel BillingModel { get; set; }
    }
}
