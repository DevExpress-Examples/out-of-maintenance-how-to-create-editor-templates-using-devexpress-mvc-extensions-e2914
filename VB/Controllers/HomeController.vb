Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.Mvc
Imports DevExpress.Web.Mvc
Imports VB.Example.Models

<HandleError()> _
Public Class HomeController
    Inherits Controller
    Public Function Index() As ActionResult
        ViewData("Message") = "Welcome to DevExpress Extensions for ASP.NET MVC!"

        Dim defaultOrder As New Order() With {.ProductName = "Product", .Price = 12.3D, .Customer = New Customer() With {.FullName = "Vest", .BirthDate = New DateTime(1892, 1, 3)}}

        Return View(defaultOrder)
    End Function

    <HttpPost()> _
    Public Function PostOrder(<ModelBinder(GetType(DevExpressEditorsBinder))> ByVal order As Order) As ActionResult
        ViewData("Message") = order.Customer.FullName & "'s order has been posted"

        Return View("Index", order)
    End Function
End Class