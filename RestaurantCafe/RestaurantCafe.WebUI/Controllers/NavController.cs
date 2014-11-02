using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RestaurantCafe.Domain.Abstract;
using RestaurantCafe.WebUI.Models;

namespace RestaurantCafe.WebUI.Controllers
{
    public class NavController : Controller
    {
        private IDishesRepository repository;

        public NavController(IDishesRepository repo)
        {
            repository = repo;
        }

        public PartialViewResult Menu(string category = null)
        {
            ViewBag.SelectedCategory = category;
            IEnumerable<string> categories = repository.Classes
                .Select(x => x.class_name)
                .Distinct()
                .OrderBy(x => x);

            return PartialView(categories);
        }

        public PartialViewResult MenuOfCuisine(string cuisine = null)
        {
            ViewBag.SelectedCuisine= cuisine;
            IEnumerable<string> categories = repository.Dishes
                .Where(x => x.cuisine_name == cuisine)
                .Select(x => x.class_name)
                .Distinct()
                .OrderBy(x => x);

            return PartialView(categories);
        }

        public PartialViewResult CuisineMenu(string cuisine = null)
        {
            ViewBag.SelectedCuisine = cuisine;
            IEnumerable<string> cuisines = repository.Cuisines
                .Select(x => x.cuisine_name)
                .Distinct()
                .OrderBy(x => x);

            return PartialView(cuisines);
        }
    }
}
