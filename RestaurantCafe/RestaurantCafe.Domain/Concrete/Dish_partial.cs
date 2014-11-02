using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace RestaurantCafe.Domain.Concrete
{
    [MetadataType(typeof(Dish_Validation))] 
    public partial class Dish
    {
    }

    public class Dish_Validation
    {
        [HiddenInput(DisplayValue = false)]
        [Display(Name="id")]
        public int dish_id { get; set; }

        [Required(ErrorMessage = "Так не пойдет!")]
        [DataType(DataType.Text)]
        [Display(Name = "Имя блюда")]
        public string dish_name { get; set; }

        [DataType(DataType.MultilineText)]
        [Display(Name = "Описание блюда")]
        public string dish_description { get; set; }

        [Required]
        [Range(0.01, double.MaxValue, ErrorMessage = "Введите положительное число")]
        [DataType(DataType.Currency)]
        [Display(Name="Цена")]
        public int dish_price { get; set; }

        [Required(ErrorMessage = "Введите путь к изображению")]
        [DataType(DataType.ImageUrl)]
        [Display(Name="Изображение")]
        public string dish_imageURL { get; set; }

        [Required(ErrorMessage = "Выберите категорию")]
        [Display(Name="Категория")]
        public string class_name { get; set; }

        [Required(ErrorMessage = "Выберите кухню")]
        [Display(Name="Кухня")]
        public string cuisine_name { get; set; }
    }
}
