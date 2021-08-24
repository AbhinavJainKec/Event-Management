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
    public class CityAPIController : Controller
    {
        private ICity _ICity;
        public CityAPIController(ICity ICity)
        {
            _ICity = ICity;
        }

        // POST api/values
        [HttpPost]
        public List<City> Post(string id)
        {
            try
            {
                var listofState = _ICity.ListofCity(Convert.ToInt32(id));
                return listofState;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
