<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Content" name="generate" post="trim"%>
	<% generateDetailDiv("Template", template ) %>
	<% generateDetailDiv("PresentationFields", presentationFields ) %>
	<% generateDetailDiv("OrderFields", orderFields ) %>
	<% generateDetailDiv("JoinCondition", joinCondition ) %>
	<% generateDetailDiv("Filter", filter ) %>
	<% generateDetailDiv("Limit", limit ) %>
	<% generateDetailDiv("Style", style ) %>
	<% generateDetailDiv("PresentationFields", presentationFields ) %>
	<% generateDetailDiv("Id_Model", _id_model ) %>