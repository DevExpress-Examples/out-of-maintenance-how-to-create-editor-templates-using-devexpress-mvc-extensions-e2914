Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.ComponentModel.DataAnnotations

Namespace Example.Models
	Public Class Customer
		Private privateFullName As String
		Public Property FullName() As String
			Get
				Return privateFullName
			End Get
			Set(ByVal value As String)
				privateFullName = value
			End Set
		End Property
		Private privateBirthDate? As DateTime
		Public Property BirthDate() As DateTime?
			Get
				Return privateBirthDate
			End Get
			Set(ByVal value? As DateTime)
				privateBirthDate = value
			End Set
		End Property
	End Class
End Namespace