using EventManager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EventManager.Interface
{
    public interface IBookVenue
    {
        bool checkBookingAvailability(BookingVenue objBV);
        int BookEvent(BookingDetails BookingDetail);
        int CancelBooking(int? BookingID);
        int? BookVenue(BookingVenue objBV);
        IEnumerable<BookingDetails> ShowBookingDetail(int UserID);
        IEnumerable<BookingDetails> ShowBookingDetail();
        int UpdateBookingStatus(string BookingNo, string BookingStatus);
        int UpdateBookingStatus(int BookingNo);
        IQueryable<BookingDetailTemp> ShowAllBooking(string sortColumn, string sortColumnDir, string Search);
        IQueryable<BookingDetailTemp> ShowAllBookingUser(string sortColumn, string sortColumnDir, string Search, int Createdby);
    }
}
