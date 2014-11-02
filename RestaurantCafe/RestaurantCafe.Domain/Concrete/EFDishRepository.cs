using RestaurantCafe.Domain.Abstract;
using System.Linq;

namespace RestaurantCafe.Domain.Concrete
{
    public class EFDishRepository : IDishesRepository
    {
        private RestaurantCafeEntities context = new RestaurantCafeEntities();

        public IQueryable<Dish> Dishes
        {
            get { return context.Dish.AsQueryable<Dish>(); }
        }

        public IQueryable<Class> Classes
        {
            get { return context.Class.AsQueryable<Class>(); }
        }

        public IQueryable<Cuisine> Cuisines 
        {
            get { return context.Cuisine.AsQueryable<Cuisine>(); }
        }

        public void SaveDish(Dish dish)
        {
            if (dish.dish_id == 0)
            {
                context.Dish.Add(dish);
            }
            else
            {
                Dish dbEntry = context.Dish.Find(dish.dish_id);
                if (dbEntry != null)
                {
                    dbEntry.dish_name = dish.dish_name;
                    dbEntry.dish_description = dish.dish_description;
                    dbEntry.dish_price = dish.dish_price;
                    dbEntry.dish_imageURL = dish.dish_imageURL;
                    dbEntry.cuisine_name = dish.cuisine_name;
                    dbEntry.class_name = dish.class_name;
                }
            }
            context.SaveChanges();
        }

        public Dish DeleteDish(int dishID)
        {
            Dish dbEntry = context.Dish.Find(dishID);
            if (dbEntry != null)
            {
                context.Dish.Remove(dbEntry);
                context.SaveChanges();
            }
            return dbEntry;
        }
    }
}
