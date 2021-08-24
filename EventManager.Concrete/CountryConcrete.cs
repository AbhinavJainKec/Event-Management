using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using EventManager.Interface;
using EventManager.Model;

namespace EventManager.Concrete
{
    public class CountryConcrete : ICountry
    {
        private DatabaseContext _context;

        public CountryConcrete(DatabaseContext context)
        {
            _context = context;
        }

        public List<Country> ListofCountry()
        {
            return _context.Country.ToList();
        }
    }
}
