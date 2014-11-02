using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RestaurantCafe.Domain.Abstract;
using RestaurantCafe.Domain.Concrete;
using RestaurantCafe.WebUI.Models;

namespace RestaurantCafe.WebUI.Controllers
{
    public class AdminRecipesController : Controller
    {
        private IRecipesRepository repository;
        public int PageSize = 2;
        public AdminRecipesController(IRecipesRepository repo)
        {
            this.repository = repo;
        }

        public ActionResult List(int page = 1)
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

        public ViewResult Edit(int recipeId)
        {
            Recipe recipe = repository.Recipes
                .FirstOrDefault(p => p.recipe_id == recipeId);

            return View(recipe);
        }

        [HttpPost]
        public ActionResult Edit(Recipe recipe)
        {
            if (ModelState.IsValid)
            {
                repository.SaveRecipe(recipe);
                TempData["message"] = string.Format("Рецепт был сохранен");
                return RedirectToAction("List");
            }
            else
            {
                // there is something wrong with the data values
                return View(recipe);
            }
        }

        public ViewResult Create()
        {
            return View("Edit", new Recipe());
        }

        [HttpPost]
        public ActionResult Delete(int recipeId)
        {
            Recipe deletedRecipe = repository.DeleteRecipe(recipeId);
            if (deletedRecipe != null)
            {
                TempData["message"] = string.Format("Рецепт был удален");
            }
            return RedirectToAction("List");
        }
    }
}
