using EventManager.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace EventManager.Interface
{
    public interface IBookFood
    {
        IEnumerable<Food> FoodList(Food Food);
        int BookFood(BookingFood Food);
    }
}
