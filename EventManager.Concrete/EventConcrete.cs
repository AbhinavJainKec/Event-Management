using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using EventManager.Interface;
using EventManager.Model;

namespace EventManager.Concrete
{
    public class EventConcrete : IEvent
    {
        private DatabaseContext _context;

        public EventConcrete(DatabaseContext context)
        {
            _context = context;
        }

        public IEnumerable<Event> GetAllEvents()
        {
            return _context.Event.ToList();
        }
    }
}
