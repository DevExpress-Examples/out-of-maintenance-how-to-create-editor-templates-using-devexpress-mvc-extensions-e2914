<%@ Page Language="vb" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Example.Models.Order>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
<%
		  :
%>
		  </h2>
	<p>
		To learn more about DevExpress Extensions for ASP.NET MVC visit <a href="http://devexpress.com/Products/NET/Controls/ASP-NET-MVC/"
			title="ASP.NET MVC Website">http://devexpress.com/Products/NET/Controls/ASP-NET-MVC/</a>.
	</p>
<%
		  ViewData("Message") Html.BeginForm("PostOrder", "Home", FormMethod.Post, New With {Key .style = "background-color: #eeeeee; width: 400px;"})
%>
	<table width="100%" class="OrderTable">
		<tr class="tblStd">
			<td colspan="2">
				<strong>Standard inputs:</strong>
			</td>
		</tr>
		<tr class="tblStd">
			<td>
				<%=Html.LabelFor(Function(m) m.ProductName)%>
			</td>
			<td>
				<%=Html.EditorFor(Function(m) m.ProductName)%>
			</td>
		</tr>
		<tr class="tblDx">
			<td colspan="2">
				<strong>DevExpress extensions:</strong>
			</td>
		</tr>
		<tr class="tblDx" style="vertical-align: text-top">
			<td>
				<%=Html.LabelFor(Function(m) m.Price)%>
			</td>
			<td>
				<%=Html.EditorFor(Function(m) m.Price)%>
			</td>
		</tr>
		<tr class="tblDx">
			<td>
				<%=Html.LabelFor(Function(m) m.Customer)%>
			</td>
			<td>
				<%=Html.EditorFor(Function(m) m.Customer)%>
			</td>
		</tr>
	</table>
<%
	   Html.DevExpress().Button(Function(s) AnonymousMethod1(s)).Render()
%>
<%
	   Html.EndForm()
%>
</asp:Content>

private bool AnonymousMethod1(object s)
{
	s.Name = "btn";
	s.Text = "Save";
	s.UseSubmitBehavior = True;
	Return True;
}