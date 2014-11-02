using System;
using System.Web.Mvc;
using System.Web.Routing;
using Ninject;
using RestaurantCafe.Domain.Abstract;
using System.Collections.Generic;
using System.Linq;
using Moq;
using RestaurantCafe.Domain.Concrete;
using System.Configuration;

namespace RestaurantCafe.WebUI.Infrastructure
{
    public class NinjectControllerFactory : DefaultControllerFactory
    {
        private IKernel ninjectKernel;

        public NinjectControllerFactory()
        {
            ninjectKernel = new StandardKernel();
            AddBindings();
        }

        protected override IController GetControllerInstance(RequestContext requestContext, Type controllerType)
        {
            return controllerType == null
                ? null
                : (IController)ninjectKernel.Get(controllerType);
        }

        private void AddBindings()
        {
            //Mock<IDishesRepository> mock = new Mock<IDishesRepository>();
            //mock.Setup(m => m.Dishes).Returns(new List<Dish> {
            //    new Dish { Name = "Football", Price = 25 },
            //    new Dish { Name = "Surf board", Price = 179 },
            //    new Dish { Name = "Running shoes", Price = 95 },

            //}.AsQueryable());

            //ninjectKernel.Bind<IDishesRepository>().ToConstant(mock.Object);

            ninjectKernel.Bind<IDishesRepository>().To<EFDishRepository>();
            ninjectKernel.Bind<INewsRepository>().To<EFNewsRepository>();
            ninjectKernel.Bind<IRecipesRepository>().To<EFRecipesRepository>();

        }
    }
}