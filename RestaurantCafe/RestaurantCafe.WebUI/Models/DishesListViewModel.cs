using System.Collections.Generic;
//using RestaurantCafe.Domain.Entities;
using RestaurantCafe.Domain.Concrete;

namespace RestaurantCafe.WebUI.Models
{
    public class DishesListViewModel
    {
        public IEnumerable<Dish> Dishes { get; set; }
        public PagingInfo PagingInfo { get; set; }

        public string CurrentCuisine { get; set; }
        public string CurrentCategory { get; set; }
    }
}