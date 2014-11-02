using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace RestaurantCafe.Domain.Concrete
{
    [MetadataType(typeof(Recipe_Validation))]
    public partial class Recipe
    {
    }

    public class Recipe_Validation
    {
        [HiddenInput(DisplayValue = false)]
        [Display(Name = "id")]
        public int recipe_id { get; set; }

        [Required(ErrorMessage = "Введетие описание рецепта")]
        [DataType(DataType.MultilineText)]
        [Display(Name = "Описание рецепта")]
        public string recipe_description { get; set; }

        [Required(ErrorMessage = "Введите путь к изображению")]
        [DataType(DataType.ImageUrl)]
        [Display(Name = "Изображение")]
        public string recipe_imageURL { get; set; }
    }
}
