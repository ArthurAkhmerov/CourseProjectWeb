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
    public class AdminNewsController : Controller
    {
        private INewsRepository repository;
        public int PageSize = 2;
        public AdminNewsController(INewsRepository repo)
        {
            this.repository = repo;
        }

        public ActionResult List(int page = 1)
        {
            IQueryable<News> news = repository.News
                .OrderByDescending(n => n.news_datetime)
                .Skip((page - 1) * PageSize)
                .Take(PageSize);

            ViewBag.PagingInfo = new PagingInfo
            {
                CurrentPage = page,
                ItemsPerPage = PageSize,
                TotalItems = repository.News.Count(),
            };

            return View(news);
        }

        public ViewResult Edit(int newsId)
        {
            News news = repository.News
                .FirstOrDefault(p => p.news_id == newsId);

            return View(news);
        }

        [HttpPost]
        public ActionResult Edit(News news)
        {
            if (ModelState.IsValid)
            {
                repository.SaveNews(news);
                TempData["message"] = string.Format("Новость была сохранена");
                return RedirectToAction("List");
            }
            else
            {
                // there is something wrong with the data values
                return View(news);
            }
        }

        public ViewResult Create()
        {
            return View("Edit", new News());
        }

        [HttpPost]
        public ActionResult Delete(int newsId)
        {
            News deletedNews = repository.DeleteNews(newsId);
            if (deletedNews != null)
            {
                TempData["message"] = string.Format("Новость была удалена");
            }
            return RedirectToAction("List");
        }

    }
}
