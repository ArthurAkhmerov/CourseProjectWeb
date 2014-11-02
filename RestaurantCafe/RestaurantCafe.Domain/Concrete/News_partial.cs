using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace RestaurantCafe.Domain.Concrete
{
    [MetadataType(typeof(News_Validation))]
    public partial class News
    {
    }

    public class News_Validation
    {
        [HiddenInput(DisplayValue = false)]
        [Display(Name = "id")]
        public int news_id { get; set; }

        [Required(ErrorMessage = "Введите дату новости")]
        [DataType(DataType.Date)]
        [Display(Name = "Дата новости")]
        public System.DateTime news_datetime { get; set; }

        [Required(ErrorMessage = "Введите путь к изображению")]
        [DataType(DataType.Upload)]
        [Display(Name = "Изображение")]
        public string news_imageURL { get; set; }

        [Required(ErrorMessage = "Так не пойдет!")]
        [DataType(DataType.MultilineText)]
        [Display(Name = "Текст новости")]
        public string news_text { get; set; }

        [DataType(DataType.Text)]
        [Display(Name = "Ресторан")]
        public string news_restName { get; set; }
    

    }
}
