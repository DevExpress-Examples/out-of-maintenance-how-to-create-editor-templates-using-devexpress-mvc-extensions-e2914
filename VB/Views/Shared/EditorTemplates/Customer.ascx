<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl(Of VB.Example.Models.Customer)" %>
<%@ Import Namespace="VB.Example.Models" %>
<table width="100%">
    <tr>
        <td>
            <%=Html.LabelFor(Function(m) DirectCast(m, Customer).FullName)%>
        </td>
        <td>
            <%
                Html.DevExpress().TextBox( _
                 Sub(s)
                     s.Name = ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName("FullName")
                     s.Width = Unit.Percentage(100)
                 End Sub).Bind(Model.FullName).Render()
            %>
        </td>
    </tr>
    <tr>
        <td>
            <%=Html.LabelFor(Function(m) DirectCast(m, Customer).BirthDate)%>
        </td>
        <td>
            <%
                Html.DevExpress().DateEdit( _
                    Sub(s)
                        s.Name = ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName("BirthDate")
                        s.Width = Unit.Percentage(100)
                    End Sub).Bind(Model.BirthDate).Render()
            %>
        </td>
    </tr>
</table>
