<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeInteger" name="generate" post="trim"%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("IsMandatory", isMandatory ) %>
	<% generateDetailDiv("IsPrimaryKey", isPrimaryKey ) %>

<%script type="becontent.AttributeInteger" name="AttributeInteger" file="<%Cleaner(current().generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>