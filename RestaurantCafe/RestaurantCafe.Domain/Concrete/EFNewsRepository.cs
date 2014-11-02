using RestaurantCafe.Domain.Abstract;
using System.Linq;

namespace RestaurantCafe.Domain.Concrete
{
    public class EFNewsRepository : INewsRepository
    {
        private RestaurantCafeEntities context = new RestaurantCafeEntities();
        public IQueryable<News> News
        {
            get { return context.News.AsQueryable<News>(); }
        }

        public void SaveNews(News news)
        {
            if (news.news_id == 0)
            {
                context.News.Add(news);
            }
            else
            {
                News dbEntry = context.News.Find(news.news_id);
                if (dbEntry != null)
                {
                    dbEntry.news_datetime = news.news_datetime;
                    dbEntry.news_imageURL = news.news_imageURL;
                    dbEntry.news_text = news.news_text;
                    dbEntry.news_restName = news.news_restName;
                }
            }
            context.SaveChanges();
        }

        public News DeleteNews(int newsID)
        {
            News dbEntry = context.News.Find(newsID);
            if (dbEntry != null)
            {
                context.News.Remove(dbEntry);
                context.SaveChanges();
            }
            return dbEntry;
        }
    }
}
