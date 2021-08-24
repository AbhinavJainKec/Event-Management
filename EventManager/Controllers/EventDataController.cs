using EventManager.Interface;
using EventManager.Model;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EventManager.Controllers
{
    [Route("api/[controller]")]
    public class EventDataController : Controller
    {
        private IEvent _IEvent;
        public EventDataController(IEvent IEvent)
        {
            _IEvent = IEvent;
        }

        // GET: api/values
        [HttpGet]
        public IEnumerable<Event> Get()
        {
            try
            {
                return _IEvent.GetAllEvents();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
