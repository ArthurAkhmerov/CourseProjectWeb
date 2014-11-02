using System.Linq;
//using RestaurantCafe.Domain.Entities;
using RestaurantCafe.Domain.Concrete;

namespace RestaurantCafe.Domain.Abstract
{
    public interface IDishesRepository
    {
        IQueryable<Dish> Dishes { get; }
        IQueryable<Class> Classes { get; }
        IQueryable<Cuisine> Cuisines { get; }

        void SaveDish(Dish dish);

        Dish DeleteDish(int dishID);
    }
}
