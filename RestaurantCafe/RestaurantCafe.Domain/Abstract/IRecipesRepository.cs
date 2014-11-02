using System.Linq;
//using RestaurantCafe.Domain.Entities;
using RestaurantCafe.Domain.Concrete;

namespace RestaurantCafe.Domain.Abstract
{
    public interface IRecipesRepository
    {
        IQueryable<Recipe> Recipes { get; }

        void SaveRecipe(Recipe dish);

        Recipe DeleteRecipe(int recipeID);
    }
}
