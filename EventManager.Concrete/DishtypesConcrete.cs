using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using EventManager.Interface;
using EventManager.Model;

namespace EventManager.Concrete
{
    public class DishtypesConcrete : IDishtypes
    {
        private DatabaseContext _context;

        public DishtypesConcrete(DatabaseContext context)
        {
            _context = context;
        }

        public List<Dishtypes> GetDishtypeList()
        {
            try
            {
                return _context.Dishtypes.ToList();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
