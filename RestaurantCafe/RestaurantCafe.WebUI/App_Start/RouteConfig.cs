using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace RestaurantCafe.WebUI
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(null,
                "",
                new
                {
                    controller = "Home",
                    action = "Index",
                });

            routes.MapRoute(null,
                "about",
                new
                {
                    controller = "Home",
                    action = "About",
                });

            routes.MapRoute(null,
                "Admin",
                new
                {
                    controller = "Admin",
                    action = "Index",
                });

            routes.MapRoute(
                "CategoryList",
                "Admin/Categories/{CuisineName}",
                new { controller = "Admin", action = "CategoryList", CuisineName = "" }
                );

            routes.MapRoute(
                "CuisineList",
                "Admin/Cuisines",
                new { controller = "Admin", action = "CuisineList" }
                );

            routes.MapRoute(
               null,
               "Admin/News",
               new { controller = "AdminNews", action = "List" }
               );

            routes.MapRoute(
               null,
               "Admin/News/Create",
               new { controller = "AdminNews", action = "Create" }
               );

            routes.MapRoute(
                 null,
                 "Admin/Recipes",
                 new { controller = "AdminRecipes", action = "List" }
                 );

            routes.MapRoute(null,
                "Admin/Menu/{page}",
                new
                {
                    controller = "Admin",
                    action = "Index",
                });

            routes.MapRoute(null,
                "Admin/Menu/",
                new
                {
                    controller = "Admin",
                    action = "Index",
                    page = 1
                });



            routes.MapRoute(null,
             "Admin/Menu/cuisine/{cuisine}/",
             new
             {
                 controller = "Admin",
                 action = "Index",
                 category = (string)null,
                 page = 1
             });

              routes.MapRoute(null,
             "Admin/Menu/cuisine/{cuisine}/{page}",
             new
             {
                 controller = "Admin",
                 action = "Index",
                 category = (string)null,
             });

            routes.MapRoute(null,
               "Admin/Menu/category/{category}",
               new
               {
                   controller = "Admin",
                   action = "Index",
                   cuisine = (string)null,
                   page = 1
               });

                routes.MapRoute(null,
               "Admin/Menu/category/{category}/{page}",
               new
               {
                   controller = "Admin",
                   action = "Index",
                   cuisine = (string)null,
               });

            routes.MapRoute(null,
                 "Admin/Menu/cuisine/{cuisine}/category/{category}",
                 new
                 {
                     controller = "Admin",
                     action = "Index",
                     page = 1
                 });

            routes.MapRoute(null,
                 "Admin/Menu/cuisine/{cuisine}/category/{category}/{page}",
                 new
                 {
                     controller = "Admin",
                     action = "Index",
                 });

            routes.MapRoute(null,
                "menu",
                new
                {
                    controller = "Dish",
                    action = "List",
                    cuisine = (string)null,
                    category = (string)null,
                });

            routes.MapRoute(null,
                "News",
                new
                {
                    controller = "News",
                    action = "List",
                    page = 1
                });

            routes.MapRoute(null,
                "News/{page}",
                new
                {
                    controller = "News",
                    action = "List",
                });


            routes.MapRoute(null,
                "Recipies",
                new
                {
                    controller = "Recipe",
                    action = "List",
                    page = 1
                });

            routes.MapRoute(null,
                "Recipies/{page}",
                new
                {
                    controller = "Recipe",
                    action = "List",
                });

            routes.MapRoute(null,
                 "cuisine/{cuisine}",
                 new
                 {
                     controller = "Dish",
                     action = "List",
                     category = (string)null,
                 });

            routes.MapRoute(null,
               "category/{category}",
               new
               {
                   controller = "Dish",
                   action = "List",
                   cuisine = (string)null,
               });

            routes.MapRoute(null,
                 "cuisine/{cuisine}/category/{category}",
                 new
                 {
                     controller = "Dish",
                     action = "List",
                 });


            //routes.MapRoute(null,
            //    "Page{page}",
            //    new { controller = "Dish", action = "List", category = (string)null },
            //    new { page = @"\d+" }
            //    );

            //routes.MapRoute(null,
            //    "{category}",
            //    new { controller = "Product", action = "List", page = 1 }
            //    );

            //routes.MapRoute(null,
            //   "{cuisine}",
            //   new { controller = "Product", action = "List", page = 1 }
            //   );

            //routes.MapRoute(null,
            //    "{category}/Page{page}",
            //    new { controller = "Product", action = "List" },
            //    new { page = @"\d+" }
            //    );

            routes.MapRoute(null, "{controller}/{action}");

        }
    }
}