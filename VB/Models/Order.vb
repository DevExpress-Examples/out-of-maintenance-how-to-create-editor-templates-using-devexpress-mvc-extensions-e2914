Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel

Namespace Example.Models

    Public Class Order

        Public Property ProductName As String

        Public Property Price As Decimal?

        Public Property Customer As Customer
    End Class
End Namespace
