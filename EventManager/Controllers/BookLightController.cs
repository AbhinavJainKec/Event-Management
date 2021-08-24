using EventManager.Filters;
using EventManager.Interface;
using EventManager.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EventManager.Controllers
{
    [ValidateUserSession]
    public class BookLightController : Controller
    {
        IBookLight _IBookLight;
        ILight _ILight;

        public BookLightController(IBookLight IBookLight, ILight ILight)
        {
            _IBookLight = IBookLight;
            _ILight = ILight;
        }

        [HttpGet]
        public IActionResult BookLight()
        {
            try
            {
                BookingLight bookinglight = new BookingLight();
                bookinglight.LightList = _ILight.GetAllLight();
                bookinglight.LightType = "1";
                SetSlider();
                return View(bookinglight);
            }
            catch (Exception)
            {
                throw;
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult BookLight(BookingLight bookinglight)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View("BookLight", bookinglight);
                }

                if (bookinglight != null && bookinglight.LightList != null)
                {
                    var result = 0;
                    var validateChecked = 0;

                    for (int i = 0; i < bookinglight.LightList.Count(); i++)
                    {
                        if (bookinglight.LightList[i].LightChecked)
                        {
                            validateChecked = 1;


                            BookingLight objbookinglight = new BookingLight()
                            {
                                LightType = bookinglight.LightType,
                                LightIDSelected = Convert.ToInt32(bookinglight.LightList[i].LightID),
                                BookingID = Convert.ToInt32(HttpContext.Session.GetInt32("BookingID")),
                                Createdby = Convert.ToInt32(HttpContext.Session.GetString("UserID")),
                                CreatedDate = DateTime.Now
                            };
                            result = _IBookLight.BookingLight(objbookinglight);

                        }
                    }

                    if (validateChecked == 0)
                    {
                        ModelState.AddModelError("", "You have not choose any Lighting !");
                    }

                    SetSlider();

                    if (result > 0)
                    {
                        ModelState.Clear();
                        ViewData["BookingLightingMessage"] = "Lighting Booked Successfully";
                        return View("Success");
                    }
                    else
                    {
                        return View("BookLight", bookinglight);
                    }
                }
                else
                {
                    return View("BookLight", bookinglight);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        [NonAction]
        private void SetSlider()
        {
            try
            {
                var Images = _ILight.ShowAllLight();
                ViewBag.SliderLightImages = Images;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
