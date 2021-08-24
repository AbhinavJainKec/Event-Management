using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations.Schema;

namespace EventManager.Model
{
    [NotMapped]
    public class FlowerModel
    {
        public int FlowerID { get; set; }
        public string FlowerName { get; set; }

        [NotMapped]
        public bool FlowerChecked { get; set; }
    }
}
