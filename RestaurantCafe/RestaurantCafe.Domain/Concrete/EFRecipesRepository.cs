using RestaurantCafe.Domain.Abstract;
using System.Linq;


namespace RestaurantCafe.Domain.Concrete
{
    public class EFRecipesRepository : IRecipesRepository
    {
        private RestaurantCafeEntities context = new RestaurantCafeEntities();
        public IQueryable<Recipe> Recipes
        {
            get { return context.Recipe.AsQueryable<Recipe>(); }
        }

        public void SaveRecipe(Recipe recipe)
        {
            if (recipe.recipe_id == 0)
            {
                context.Recipe.Add(recipe);
            }
            else
            {
                Recipe dbEntry = context.Recipe.Find(recipe.recipe_id);
                if (dbEntry != null)
                {
                    dbEntry.recipe_description = recipe.recipe_description;
                    dbEntry.recipe_imageURL = recipe.recipe_imageURL;
                }
            }
            context.SaveChanges();
        }

        public Recipe DeleteRecipe(int recipeID)
        {
            Recipe dbEntry = context.Recipe.Find(recipeID);
            if (dbEntry != null)
            {
                context.Recipe.Remove(dbEntry);
                context.SaveChanges();
            }
            return dbEntry;
        }

    }
}
