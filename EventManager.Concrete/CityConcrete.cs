using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using EventManager.Interface;
using EventManager.Model;

namespace EventManager.Concrete
{
    public class CityConcrete : ICity
    {
        private DatabaseContext _context;

        public CityConcrete(DatabaseContext context)
        {
            _context = context;
        }

        public List<City> ListofCity(int? ID)
        {
            if (ID == null)
            {
                return new List<City>();
            }

            var listofcities = (from cities in _context.City
                                where cities.StateID == ID
                                select cities).ToList();

            listofcities.Insert(0, new City { CityID = 0, CityName = "----Select----" });

            return listofcities;
        }
    }
}
