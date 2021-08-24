using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations.Schema;

namespace EventManager.Model
{
    [NotMapped]
    public class FoodModel
    {
        public int FoodID { get; set; }
        public string FoodName { get; set; }

        [NotMapped]
        public bool FoodChecked { get; set; }
    }
}
