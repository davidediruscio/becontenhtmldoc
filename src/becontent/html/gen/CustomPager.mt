<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.CustomPager" name="generate" post="trim()"%>
	<% generateDetailDiv("className", className ) %>
	<% generateDetailDiv("length", length ) %>
	<% generateDetailDiv("template", template ) %>
	<% generateDetailDiv("query", query ) %>
	<% generateDetailDiv("filter", filter ) %>
	<% generateDetailDiv("order", order ) %>
	<% generateDetailDiv("_id_model", _id_model ) %>

<%script type="becontent.CustomPager" name="CustomPager" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>

