<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeVarchar" name="generate" post="trim()"%>
	<% generateDetailDiv("isMandatory", isMandatory ) %>
	<% generateDetailDiv("isPresented", isPresented ) %>
	<% generateDetailDiv("isPrimaryKey", isPrimaryKey ) %>
 	<% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 	<% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 	<% generateDetailDiv("isTextSearch", isTextSearch ) %>
 	<% generateDetailDiv("length", length ) %>
	<% generateDetailDiv("name", name ) %>

<%script type="becontent.AttributeVarchar" name="AttributeVarchar" file="<%cleaner(generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>