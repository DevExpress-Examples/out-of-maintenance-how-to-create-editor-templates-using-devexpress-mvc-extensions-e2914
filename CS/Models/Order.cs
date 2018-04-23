using System;
using System.Collections.Generic;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace Example.Models {
    public class Order {
        public String ProductName { get; set; }        
        public Decimal? Price { get; set; }
        public Customer Customer { get; set; }
    }
}