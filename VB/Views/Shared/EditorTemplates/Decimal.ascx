<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    Html.DevExpress().SpinEdit( _
        Sub(s)
            s.Name = ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName("")
            s.Width = Unit.Percentage(100)
        End Sub).Bind(Model).Render()
%>