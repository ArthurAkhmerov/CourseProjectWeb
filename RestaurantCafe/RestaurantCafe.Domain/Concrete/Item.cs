//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Item
    {
        public Item()
        {
            this.Dish = new HashSet<Dish>();
        }
    
        public int item_id { get; set; }
        public string item_name { get; set; }
        public string item_description { get; set; }
        public int item_price { get; set; }
    
        public virtual ICollection<Dish> Dish { get; set; }
    }
}