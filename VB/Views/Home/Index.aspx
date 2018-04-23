<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="VB.Example.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <%: ViewData("Message")%></h2>
    <p>
        To learn more about DevExpress Extensions for ASP.NET MVC visit <a href="http://devexpress.com/Products/NET/Controls/ASP-NET-MVC/"
            title="ASP.NET MVC Website">http://devexpress.com/Products/NET/Controls/ASP-NET-MVC/</a>.
    </p>
    <% Html.BeginForm("PostOrder", "Home", FormMethod.Post, New With {.style = "background-color: #eeeeee; width: 400px;"})%>
    <table width="100%" class="OrderTable">
        <tr class="tblStd">
            <td colspan="2">
                <strong>Standard inputs:</strong>
            </td>
        </tr>
        <tr class="tblStd">
            <td>
                <%=Html.LabelFor(Function(m) DirectCast(m, Order).ProductName)%>
            </td>
            <td>
                <%=Html.EditorFor(Function(m) DirectCast(m, Order).ProductName)%>
            </td>
        </tr>
        <tr class="tblDx">
            <td colspan="2">
                <strong>DevExpress extensions:</strong>
            </td>
        </tr>
        <tr class="tblDx" style="vertical-align: text-top">
            <td>
                <%=Html.LabelFor(Function(m) DirectCast(m, Order).Price)%>
            </td>
            <td>
                <%=Html.EditorFor(Function(m) DirectCast(m, Order).Price)%>
            </td>
        </tr>
        <tr class="tblDx">
            <td>
                <%=Html.LabelFor(Function(m) DirectCast(m, Order).Customer)%>
            </td>
            <td>
                <%=Html.EditorFor(Function(m) DirectCast(m, Order).Customer)%>
            </td>
        </tr>
    </table>
    <% Html.DevExpress().Button( _
           Sub(s)
               s.Name = "btn"
               s.Text = "Save"
               s.UseSubmitBehavior = True
           End Sub).Render()%>
    <% Html.EndForm()%>
</asp:Content>