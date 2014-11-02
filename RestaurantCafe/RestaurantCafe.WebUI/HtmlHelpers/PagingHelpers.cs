using System;
using System.Text;
using System.Web.Mvc;
using RestaurantCafe.WebUI.Models;

namespace RestaurantCafe.WebUI.HtmlHelpers
{
    public static class PagingHelpers
    {
        public static MvcHtmlString PageLinks(this HtmlHelper html,
            PagingInfo pagingInfo,
            Func<int, string> pageUrl)
        {
            StringBuilder result = new StringBuilder();
            result.Append("<ul>");
            for (int i = 1; i <= pagingInfo.TotalPages; i++)
            {
                result.Append("<li>");
                TagBuilder tag = new TagBuilder("a");
                tag.MergeAttribute("href", pageUrl(i));
                tag.InnerHtml = i.ToString();
                if (i == pagingInfo.CurrentPage)
                {
                    tag.AddCssClass("selected");
                }
                result.Append(tag.ToString());
                result.Append("</li>");
            }
            result.Append("</ul>");

            return MvcHtmlString.Create(result.ToString());
        }
    }
}