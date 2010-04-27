<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeVarchar" name="generate" post="trim"%>
	<% generateDetailDiv("name", name ) %>
	<% generateDetailDiv("isMandatory", isMandatory ) %>
	<% generateDetailDiv("isPrimaryKey", isPrimaryKey ) %>
	<% generateDetailDiv("length", length ) %>

<%script type="becontent.AttributeVarchar" name="AttributeVarchar" file="<%Cleaner(generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>