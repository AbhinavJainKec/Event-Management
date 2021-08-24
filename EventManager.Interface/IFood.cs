using EventManager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EventManager.Interface
{
    public interface IFood
    {
        void SaveFood(Food Food);
        IQueryable<Food> ShowFood(string sortColumn, string sortColumnDir, string Search);
        int DeleteFood(int id);
        Food FoodByID(int id);
        void UpdateFood(Food Food);
        bool CheckDishNameAlready(string DishName, string FoodType);
        List<FoodModel> GetAllFood();
        IEnumerable<Food> ShowAllFood();
    }
}
