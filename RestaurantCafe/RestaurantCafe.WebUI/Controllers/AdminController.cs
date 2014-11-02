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
    public class AdminController : Controller
    {
        private IDishesRepository repository;
        public int PageSize = 7;

        public AdminController(IDishesRepository repo)
        {
            repository = repo;
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

        public PartialViewResult MenuOfCuisine(string cuisine = null)
        {
            ViewBag.SelectedCuisine = cuisine;
            IEnumerable<string> categories = repository.Dishes
                .Where(x => x.cuisine_name == cuisine)
                .Select(x => x.class_name)
                .Distinct()
                .OrderBy(x => x);

            return PartialView(categories);
        }

        public ViewResult Index(string cuisine, string category, int page = 1)
        {
            IQueryable<Dish> dishes = repository.Dishes
                    .Where(d => cuisine == null || d.cuisine_name == cuisine)
                    .Where(d => category == null || d.class_name == category)
                    .OrderBy(d => d.dish_id)
                    .Skip((page - 1) * PageSize)
                    .Take(PageSize);

            ViewBag.CurrentUrl = "/Admin/Menu/";
            if (cuisine != null && category != null)
            {
                ViewBag.CurrentUrl += "cuisine/" + cuisine + "/category/" + category + "/";
            }
            else
            {
                if (cuisine == null && category != null)
                {
                    ViewBag.CurrentUrl += "category/" + category + "/";
                }
                else
                {
                    if (cuisine != null && category == null)
                    {
                        ViewBag.CurrentUrl += "cuisine/" + cuisine + "/";
                    }

                }
            }

            ViewBag.CurrentCuisine = cuisine;
            ViewBag.CurrentCategory = category;
            ViewBag.PagingInfo = new PagingInfo
            {
                CurrentPage = page,
                ItemsPerPage = PageSize,
                TotalItems = repository.Dishes
                    .Where(d => cuisine == null || d.cuisine_name == cuisine)
                    .Where(d => category == null || d.class_name == category).Count(),
            };
            return View(dishes);
        }

        public ActionResult CuisineList()
        {
            IQueryable cuisines = repository.Cuisines;
            if (HttpContext.Request.IsAjaxRequest())
            {
                return Json(new SelectList(
                    cuisines,
                    "cuisine_name",
                    "cuisine_name"), JsonRequestBehavior.AllowGet
                    );
            }

            return View(cuisines);
        }

        public ActionResult CategoryList(string CuisineName)
        {
            IQueryable categories = repository.Dishes
                .Where(d => d.cuisine_name == CuisineName)
                .Select(d => d.class_name)
                .Distinct()
                .OrderBy(d => d).AsQueryable();

            if (HttpContext.Request.IsAjaxRequest())
            {
                return Json(new SelectList(
                    categories), JsonRequestBehavior.AllowGet
                    );

            }

            return View(categories);
        }

        public ViewResult Edit(int dishId)
        {
            Dish dish = repository.Dishes
                .FirstOrDefault(p => p.dish_id == dishId);
            IEnumerable<string> cuisines = repository.Cuisines
                .Select(c => c.cuisine_name)
                .Distinct()
                .OrderBy(c => c)
                .AsEnumerable();
            ViewBag.CuisineList = new SelectList(cuisines);

            string currentCuisine = repository.Dishes
                .Where(d => d.dish_id == dishId)
                .Select(d => d.cuisine_name)
                .FirstOrDefault();
            IEnumerable<string> categories = repository.Dishes
                .Where(d => d.cuisine_name == currentCuisine)
                .Select(d => d.class_name)
                .Distinct()
                .OrderBy(d => d)
                .AsEnumerable();
            ViewBag.CategoryList = new SelectList(categories);

            return View(dish);
        }

        [HttpPost]
        public ActionResult Edit(Dish dish)
        {
            if (ModelState.IsValid)
            {
                repository.SaveDish(dish);
                TempData["message"] = string.Format("Блюдо {0} было сохранено", dish.dish_name);
                return RedirectToAction("Index");
            }
            else
            {
                // there is something wrong with the data values
                return View(dish);
            }
        }

        public ViewResult Create()
        {
            Dish dish = new Dish();
            IEnumerable<string> cuisines = repository.Cuisines
                .Select(c => c.cuisine_name)
                .Distinct()
                .OrderBy(c => c)
                .AsEnumerable();
            ViewBag.CuisineList = new SelectList(cuisines);

            IEnumerable<string> categories = repository.Dishes
                .Select(d => d.class_name)
                .Distinct()
                .OrderBy(d => d)
                .AsEnumerable();
            ViewBag.CategoryList = new SelectList(categories);

            return View("Edit", new Dish());
        }

        [HttpPost]
        public ActionResult Delete(int dishId)
        {
            Dish deletedDish = repository.DeleteDish(dishId);
            if (deletedDish != null)
            {
                TempData["message"] = string.Format("Блюдо {0} было удалено",
                    deletedDish.dish_name);
            }
            return RedirectToAction("Index");
        }
    }

}
