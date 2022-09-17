Imports System
Imports System.Web.Mvc
Imports Example.Models
Imports DevExpress.Web.Mvc

Namespace Example.Controllers

    <HandleError>
    Public Class HomeController
        Inherits Controller

        Public Function Index() As ActionResult
            ViewData("Message") = "Welcome to DevExpress Extensions for ASP.NET MVC!"
            Dim defaultOrder As Order = New Order() With {.ProductName = "Product", .Price = 12.3D, .Customer = New Customer() With {.FullName = "Vest", .BirthDate = New DateTime(1892, 1, 3)}}
            Return View(defaultOrder)
        End Function

        <HttpPost>
        Public Function PostOrder(<ModelBinder(GetType(DevExpressEditorsBinder))> ByVal order As Order) As ActionResult
            ViewData("Message") = order.Customer.FullName & "'s order has been posted"
            Return View("Index", order)
        End Function
    End Class
End Namespace
