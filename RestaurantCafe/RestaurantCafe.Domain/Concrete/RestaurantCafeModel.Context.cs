﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RestaurantCafe.Domain.Concrete
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class RestaurantCafeEntities : DbContext
    {
        public RestaurantCafeEntities()
            : base("name=RestaurantCafeEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Class> Class { get; set; }
        public DbSet<Cuisine> Cuisine { get; set; }
        public DbSet<DiningTable> DiningTable { get; set; }
        public DbSet<Dish> Dish { get; set; }
        public DbSet<Item> Item { get; set; }
        public DbSet<Menu> Menu { get; set; }
        public DbSet<News> News { get; set; }
        public DbSet<Orders> Orders { get; set; }
        public DbSet<Recipe> Recipe { get; set; }
        public DbSet<Restaurant> Restaurant { get; set; }
        public DbSet<Reviews> Reviews { get; set; }
        public DbSet<Section> Section { get; set; }
    }
}
