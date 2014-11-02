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
    public class DishController : Controller
    {
        private IDishesRepository repository;

        public DishController(IDishesRepository dishesRepository)
        {
            this.repository = dishesRepository;
        }

        public ViewResult List(string cuisine, string category)
        {
            DishesListViewModel model = new DishesListViewModel
            {
                Dishes = repository.Dishes
                .Where(d => cuisine == null || d.cuisine_name == cuisine)
                .Where(d => category == null || d.class_name == category)
                .OrderBy(d => d.dish_id),
                CurrentCuisine = cuisine,
                CurrentCategory = category
            };
            return View(model);
        }
    }
}
