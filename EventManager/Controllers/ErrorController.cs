using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EventManager.Controllers
{
    public class ErrorController : Controller
    {
        // GET: /<controller>/
        public IActionResult Error()
        {
            HttpContext.Session.Clear();
            return View("Error");
        }
    }
}
