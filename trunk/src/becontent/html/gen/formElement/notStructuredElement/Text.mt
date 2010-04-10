<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
%>

<%script type="becontent.Text" name="generate" post="trim()"%>	
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Label", label ) %>
	<% generateDetailDiv("Size", size ) %>
	<% generateDetailDiv("IsMandatory", isMandatory ) %>
	<% generateDetailDiv("MaxLength", maxLength ) %>
	<%if helper != null {%>
		<% generateDetailDiv("Helper", helper ) %>
	<%}%>


<%script type="becontent.Text" name="Text" file="<%current().eClass().name%>_<%name%>.html"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>