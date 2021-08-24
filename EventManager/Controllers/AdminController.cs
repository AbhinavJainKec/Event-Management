using EventManager.Filters;
using EventManager.Interface;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EventManager.Controllers
{
    [ValidateAdminSession]
    public class AdminController : Controller
    {
        IRegistration _IRepository;
        public AdminController(IRegistration IRepository)
        {
            _IRepository = IRepository;
        }

        [HttpGet]
        // GET: /<controller>/
        public IActionResult Dashboard()
        {
            try
            {
                var profile = _IRepository.Userinformation(Convert.ToInt32(HttpContext.Session.GetString("UserID")));
                return View(profile);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
