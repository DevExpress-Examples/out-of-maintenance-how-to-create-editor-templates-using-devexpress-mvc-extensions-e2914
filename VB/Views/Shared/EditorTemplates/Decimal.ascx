<%@ Control Language="vb" Inherits="System.Web.Mvc.ViewUserControl<System.Decimal?>" %>
<%
   Html.DevExpress().SpinEdit(Function(s) AnonymousMethod1(s)).Bind(Model).Render()
%>

private bool AnonymousMethod1(object s)
{
	s.Name = ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName("");
	s.Width = Unit.Percentage(100);
	Return True;
}