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
    public class NewsController : Controller
    {
        private INewsRepository repository;
        public int PageSize = 4;
        public NewsController(INewsRepository  newsRepository)
        {
            this.repository = newsRepository;
        }
        public ViewResult List(int page = 1)
        {
            NewsListViewModel model = new NewsListViewModel
            {
                News = repository.News
                    .OrderBy(x => x.news_datetime)
                    .Skip((page - 1) * PageSize)
                    .Take(PageSize),
                PagingInfo = new PagingInfo
                {
                    CurrentPage = page,
                    ItemsPerPage = PageSize,
                    TotalItems = repository.News.Count()
                },
            };
            return View(model);

            //ProductsListViewModel model = new ProductsListViewModel
            //{
            //    Products = repository.Products
            //    .Where(p => category == null || p.Category == category)
            //    .OrderBy(p => p.ProductID)
            //    .Skip((page - 1) * PageSize)
            //    .Take(PageSize),
            //    PagingInfo = new PagingInfo
            //    {
            //        CurrentPage = page,
            //        ItemsPerPage = PageSize,
            //        TotalItems = category == null ?
            //            repository.Products.Count() :
            //            repository.Products.Where(e => e.Category == category).Count()
            //    },
            //    CurrentCategory = category
            //};

        }

    }
}
