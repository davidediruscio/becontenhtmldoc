<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.CustomPager" name="generate" post="trim()"%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<% generateDetailDiv("className", className ) %>
	<% generateDetailDiv("filter", filter ) %>
	<% generateDetailDiv("length", length ) %>
	<% generateDetailDiv("order", order ) %>
	<% generateDetailDiv("query", query ) %>
	<% generateDetailDiv("template", template ) %>

<%script type="becontent.CustomPager" name="CustomPager" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>

