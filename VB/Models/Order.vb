Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel

Namespace Example.Models
	Public Class Order
		Private privateProductName As String
		Public Property ProductName() As String
			Get
				Return privateProductName
			End Get
			Set(ByVal value As String)
				privateProductName = value
			End Set
		End Property
		Private privatePrice? As Decimal
		Public Property Price() As Decimal?
			Get
				Return privatePrice
			End Get
			Set(ByVal value? As Decimal)
				privatePrice = value
			End Set
		End Property
		Private privateCustomer As Customer
		Public Property Customer() As Customer
			Get
				Return privateCustomer
			End Get
			Set(ByVal value As Customer)
				privateCustomer = value
			End Set
		End Property
	End Class
End Namespace