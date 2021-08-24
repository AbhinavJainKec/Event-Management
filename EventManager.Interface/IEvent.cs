using EventManager.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace EventManager.Interface
{
    public interface IEvent
    {
        IEnumerable<Event> GetAllEvents();
    }
}
