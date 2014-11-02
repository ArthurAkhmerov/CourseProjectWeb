using System;
using System.Text;
using System.Web.Mvc;

namespace RestaurantCafe.WebUI.HtmlHelpers
{
    public static class ImageHelper
    {
        public static MvcHtmlString Image(this HtmlHelper html, string imageUrl, string altText = null, string height = null)
        {
            TagBuilder tag = new TagBuilder("img");
            tag.MergeAttribute("src", imageUrl);
            if (altText != null)
            {
                tag.MergeAttribute("alt", altText);
            }
            if (height != null)
            {
                tag.MergeAttribute("height", height);
            }

            return MvcHtmlString.Create(tag.ToString(TagRenderMode.SelfClosing));
        }
    }
}