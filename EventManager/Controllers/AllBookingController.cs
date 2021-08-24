using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EventManager.Controllers
{
    public class AllBookingController : Controller
    {
        public IActionResult Bookings()
        {
            return View();
        }
    }
}
