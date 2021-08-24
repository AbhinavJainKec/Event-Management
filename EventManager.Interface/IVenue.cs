using EventManager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EventManager.Interface
{
    public interface IVenue
    {
        void SaveVenue(Venue venue);
        void UpdateVenue(Venue venue);
        IQueryable<Venue> ShowVenue(string sortColumn, string sortColumnDir, string Search);
        IEnumerable<Venue> ShowAllVenue();
        int DeleteVenue(int id);
        Venue VenueByID(int id);
        bool CheckVenueNameAlready(string venueName);
    }
}
