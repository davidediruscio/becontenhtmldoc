<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
%>

<%script type="becontent.EntityField" name="generate" post="trim()"%>
	<% generateDetailDiv("Is Presented", isPresented ) %>
	<% generateDetailDiv("Is Search Presentation Body", isSearchPresentationBody ) %>
	<% generateDetailDiv("Is Search Presentation Head", isSearchPresentationHead ) %>
	<% generateDetailDiv("Is Text Search", isTextSearch ) %>
	

<%script type="becontent.EntityField" name="EntityField" file="<%current().eClass().name%>_<%name%>.html"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>


