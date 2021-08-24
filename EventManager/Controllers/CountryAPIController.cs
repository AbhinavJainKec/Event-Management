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
    public class CountryAPIController : Controller
    {
        private ICountry _ICountry;
        public CountryAPIController(ICountry ICountry)
        {
            _ICountry = ICountry;
        }

        // GET: api/values
        [HttpGet]
        public IEnumerable<Country> Get()
        {
            try
            {
                var listofCountry = _ICountry.ListofCountry();
                listofCountry.Insert(0, new Country { CountryID = 0, Name = "----Select----" });
                return listofCountry;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
