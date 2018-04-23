<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Example.Models.Customer>" %>
<table width="100%">
    <tr>
        <td>
            <%=Html.LabelFor(m => m.FullName) %>
        </td>
        <td>
            <%
                Html.DevExpress().TextBox(s => {
                    s.Name = ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName("FullName");
                    s.Width = Unit.Percentage(100);
                })
                   .Bind(Model.FullName)
                   .Render(); 
            %>
        </td>
    </tr>
    <tr>
        <td>
            <%=Html.LabelFor(m => m.BirthDate) %>
        </td>
        <td>
            <%
                Html.DevExpress().DateEdit(s => {
                    s.Name = ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName("BirthDate");
                    s.Width = Unit.Percentage(100);
                })
                   .Bind(Model.BirthDate)
                   .Render(); 
            %>
        </td>
    </tr>
</table>
