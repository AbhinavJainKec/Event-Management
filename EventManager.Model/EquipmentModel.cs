using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations.Schema;

namespace EventManager.Model
{
    [NotMapped]
    public class EquipmentModel
    {
        public int EquipmentID { get; set; }
        public string EquipmentName { get; set; }
        [NotMapped]
        public bool EquipmentChecked { get; set; }
    }
}
