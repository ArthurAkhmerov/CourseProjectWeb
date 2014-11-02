using System.Collections.Generic;
//using RestaurantCafe.Domain.Entities;
using RestaurantCafe.Domain.Concrete;

namespace RestaurantCafe.WebUI.Models
{
    public class NewsListViewModel
    {
        public IEnumerable<News> News { get; set; }
        public PagingInfo PagingInfo { get; set; }
    }
}