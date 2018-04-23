using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Example.Models;
using DevExpress.Web.Mvc;

namespace Example.Controllers {
    [HandleError]
    public class HomeController : Controller {
        public ActionResult Index() {
            ViewData["Message"] = "Welcome to DevExpress Extensions for ASP.NET MVC!";

            Order defaultOrder = new Order() {
                ProductName = "Product",
                Price = 12.3M,
                Customer = new Customer() {
                    FullName = "Vest",
                    BirthDate = new DateTime(1892, 1, 3)
                }
            };

            return View(defaultOrder);
        }

        [HttpPost]
        public ActionResult PostOrder([ModelBinder(typeof(DevExpressEditorsBinder))] Order order) {
            ViewData["Message"] = order.Customer.FullName + "'s order has been posted";

            return View("Index", order);
        }
    }
}
