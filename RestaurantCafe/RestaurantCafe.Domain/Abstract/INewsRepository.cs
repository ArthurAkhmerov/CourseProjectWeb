using System.Linq;
//using RestaurantCafe.Domain.Entities;
using RestaurantCafe.Domain.Concrete;

namespace RestaurantCafe.Domain.Abstract
{
    public interface INewsRepository
    {
        IQueryable<News> News { get; }

        void SaveNews(News dish);

        News DeleteNews(int dishID);
    }
}
