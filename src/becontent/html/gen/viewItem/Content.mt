<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Content" name="generate" post="trim"%>
	<% generateDetailDiv("template", template ) %>
	<% generateDetailDiv("presentationFields", presentationFields ) %>
	<% generateDetailDiv("orderFields", orderFields ) %>
	<% generateDetailDiv("joinCondition", joinCondition ) %>
	<% generateDetailDiv("filter", filter ) %>
	<% generateDetailDiv("limit", limit ) %>
	<% generateDetailDiv("style", style ) %>
	<% generateDetailDiv("presentationFields", presentationFields ) %>
	<% generateDetailDiv("_id_model", _id_model ) %>