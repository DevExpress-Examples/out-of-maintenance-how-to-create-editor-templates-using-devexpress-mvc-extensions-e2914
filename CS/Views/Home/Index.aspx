<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Example.Models.Order>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <%: ViewData["Message"] %></h2>
    <p>
        To learn more about DevExpress Extensions for ASP.NET MVC visit <a href="http://devexpress.com/Products/NET/Controls/ASP-NET-MVC/"
            title="ASP.NET MVC Website">http://devexpress.com/Products/NET/Controls/ASP-NET-MVC/</a>.
    </p>
    <% Html.BeginForm("PostOrder", "Home", FormMethod.Post, new { style = "background-color: #eeeeee; width: 400px;" }); %>
    <table width="100%" class="OrderTable">
        <tr class="tblStd">
            <td colspan="2">
                <strong>Standard inputs:</strong>
            </td>
        </tr>
        <tr class="tblStd">
            <td>
                <%=Html.LabelFor(m => m.ProductName) %>
            </td>
            <td>
                <%=Html.EditorFor(m => m.ProductName )%>
            </td>
        </tr>
        <tr class="tblDx">
            <td colspan="2">
                <strong>DevExpress extensions:</strong>
            </td>
        </tr>
        <tr class="tblDx" style="vertical-align: text-top">
            <td>
                <%=Html.LabelFor(m => m.Price) %>
            </td>
            <td>
                <%=Html.EditorFor(m => m.Price)%>
            </td>
        </tr>
        <tr class="tblDx">
            <td>
                <%=Html.LabelFor(m => m.Customer) %>
            </td>
            <td>
                <%=Html.EditorFor(m => m.Customer)%>
            </td>
        </tr>
    </table>
    <% Html.DevExpress().Button(s => {
           s.Name = "btn";
           s.Text = "Save";
           s.UseSubmitBehavior = true;
       })
           .Render(); %>
    <% Html.EndForm(); %>
</asp:Content>