<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<System.Decimal?>" %>
<% Html.DevExpress().SpinEdit(s => {
       s.Name = ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName("");
       s.Width = Unit.Percentage(100);
   })
   .Bind(Model)
   .Render(); %>