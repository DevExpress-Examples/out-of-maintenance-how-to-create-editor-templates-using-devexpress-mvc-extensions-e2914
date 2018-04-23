using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Example.Models {
    public class Customer {
        public String FullName { get; set; }
        public DateTime? BirthDate { get; set; }
    }
}