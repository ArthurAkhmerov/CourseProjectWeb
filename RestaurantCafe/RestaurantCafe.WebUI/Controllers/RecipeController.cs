using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RestaurantCafe.Domain.Abstract;
//using RestaurantCafe.Domain.Entities;
using RestaurantCafe.WebUI.Models;
using RestaurantCafe.Domain.Concrete;
namespace RestaurantCafe.WebUI.Controllers
{
    public class RecipeController : Controller
    {
        private IRecipesRepository repository;
        public int PageSize = 4;
        public RecipeController(IRecipesRepository recipesRepository)
        {
            this.repository = recipesRepository;
        }
        public ViewResult List(int page = 1)
        {
            IQueryable<Recipe> recipes = repository.Recipes
                .OrderByDescending(n => n.recipe_id)
                .Skip((page - 1) * PageSize)
                .Take(PageSize);

            ViewBag.PagingInfo = new PagingInfo
            {
                CurrentPage = page,
                ItemsPerPage = PageSize,
                TotalItems = repository.Recipes.Count(),
            };

            return View(recipes);


        }

    }
}
