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
    
    public partial class Menu
    {
        public Menu()
        {
            this.Cuisine = new HashSet<Cuisine>();
        }
    
        public int menu_id { get; set; }
        public string menu_version { get; set; }
        public string menu_restName { get; set; }
    
        public virtual Restaurant Restaurant { get; set; }
        public virtual ICollection<Cuisine> Cuisine { get; set; }
    }
}
