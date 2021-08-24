using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using EventManager.Interface;
using EventManager.Model;

namespace EventManager.Concrete
{
    public class BookLightConcrete : IBookLight
    {
        private DatabaseContext _context;

        public BookLightConcrete(DatabaseContext context)
        {
            _context = context;
        }

        public int BookingLight(BookingLight bookinglight)
        {
            try
            {
                if (bookinglight != null)
                {
                    _context.BookingLight.Add(bookinglight);
                    _context.SaveChanges();
                    return bookinglight.BookLightID;
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
