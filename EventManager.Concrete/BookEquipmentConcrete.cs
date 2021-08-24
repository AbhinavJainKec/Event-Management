using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using EventManager.Interface;
using EventManager.Model;
namespace EventManager.Concrete
{
    public class BookEquipmentConcrete : IBookEquipment
    {
        private DatabaseContext _context;

        public BookEquipmentConcrete(DatabaseContext context)
        {
            _context = context;
        }
        public int BookEquipment(BookingEquipment BookingEquipment)
        {
            try
            {
                if (BookingEquipment != null)
                {
                    _context.BookingEquipment.Add(BookingEquipment);
                    _context.SaveChanges();
                    return BookingEquipment.BookingID;
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
