using EventManager.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace EventManager.Interface
{
    public interface ITotalBilling
    {
        BillingModel GetBillingDetailsbyBookingNo(string BookingNo);
        CompleteBookingModel ShowCompleteBookingDetailsbyBookingNo(string BookingNo);
    }
}
