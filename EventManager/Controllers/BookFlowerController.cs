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
    public class BookFlowerController : Controller
    {
        IBookFlower _IBookFlower;
        IFlower _IFlower;
        IBookVenue _IBookVenue;
        public BookFlowerController(IBookFlower IBookFlower, IFlower IFlower, IBookVenue IBookVenue)
        {
            _IBookFlower = IBookFlower;
            _IFlower = IFlower;
            _IBookVenue = IBookVenue;
        }


        [HttpGet]
        public IActionResult BookFlower()
        {
            try
            {
                BookingFlower bookingflower = new BookingFlower();
                bookingflower.FlowerList = _IFlower.GetAllFlower();
                SetSlider();
                return View(bookingflower);
            }
            catch (Exception)
            {
                throw;
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult BookFlower(BookingFlower bookingflower)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View("BookFlower", bookingflower);
                }

                if (bookingflower != null && bookingflower.FlowerList != null)
                {
                    var result = 0;
                    var validateChecked = 0;

                    for (int i = 0; i < bookingflower.FlowerList.Count(); i++)
                    {
                        if (bookingflower.FlowerList[i].FlowerChecked)
                        {
                            validateChecked = 1;

                            BookingFlower objbookingflower = new BookingFlower()
                            {
                                FlowerID = Convert.ToInt32(bookingflower.FlowerList[i].FlowerID),
                                BookingID = Convert.ToInt32(HttpContext.Session.GetInt32("BookingID")),
                                Createdby = Convert.ToInt32(HttpContext.Session.GetString("UserID")),
                                CreatedDate = DateTime.Now
                            };

                            result = _IBookFlower.BookFlower(objbookingflower);
                            if (result > 0)
                            {
                                _IBookVenue.UpdateBookingStatus(Convert.ToInt32(HttpContext.Session.GetInt32("BookingID")));
                            }
                        }
                    }
                    if (validateChecked == 0)
                    {
                        ModelState.AddModelError("", "You have not choose any Flower !");
                    }

                    SetSlider();

                    if (result > 0)
                    {
                        ModelState.Clear();
                        ViewData["BookingFlowerMessage"] = "Flower Booked Successfully";
                        return View("Success");
                    }
                    else
                    {
                        return View("BookFlower", bookingflower);
                    }
                }
                else
                {
                   return View("BookFlower", bookingflower);
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult BookFlowerCancel(BookingFlower bookingflower)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View("BookFlower", bookingflower);
                }

                if (bookingflower != null && bookingflower.FlowerList == null)
                {
                    var result = 0;

                    BookingFlower objbookingflower = new BookingFlower()
                    {
                        FlowerID = null,
                        BookingID = Convert.ToInt32(HttpContext.Session.GetInt32("BookingID")),
                        Createdby = Convert.ToInt32(HttpContext.Session.GetString("UserID")),
                        CreatedDate = DateTime.Now
                    };

                    result = _IBookFlower.BookFlower(objbookingflower);
                    _IBookVenue.UpdateBookingStatus(Convert.ToInt32(HttpContext.Session.GetInt32("BookingID")));

                    SetSlider();

                    ModelState.Clear();
                    ViewData["BookingFlowerMessage"] = "Flower Not Booked";
                    return View("Success");
                    //return View("BookFlower", bookingflower);
                }
                else
                {
                    return View("BookFlower", bookingflower);
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
                var Images = _IFlower.ShowAllFlower();
                ViewBag.SliderFlowerImages = Images;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
