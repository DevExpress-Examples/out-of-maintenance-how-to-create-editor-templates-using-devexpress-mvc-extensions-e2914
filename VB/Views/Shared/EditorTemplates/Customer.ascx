<%@ Control Language="vb" Inherits="System.Web.Mvc.ViewUserControl<Example.Models.Customer>" %>
<table width="100%">
	<tr>
		<td>
			<%=Html.LabelFor(Function(m) m.FullName)%>
		</td>
		<td>
			<%
				Html.DevExpress().TextBox(Function(s) AnonymousMethod1(s)).Bind(Model.FullName).Render()
			%>
		</td>
	</tr>
	<tr>
		<td>
			<%=Html.LabelFor(Function(m) m.BirthDate)%>
		</td>
		<td>
			<%
				Html.DevExpress().DateEdit(Function(s) AnonymousMethod2(s)).Bind(Model.BirthDate).Render()
			%>
		</td>
	</tr>
</table>


private bool AnonymousMethod1(object s)
{
	s.Name = ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName("FullName");
	s.Width = Unit.Percentage(100);
	Return True;
}

private bool AnonymousMethod2(object s)
{
	s.Name = ViewContext.ViewData.TemplateInfo.GetFullHtmlFieldName("BirthDate");
	s.Width = Unit.Percentage(100);
	Return True;
}