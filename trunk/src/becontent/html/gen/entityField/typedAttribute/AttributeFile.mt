<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeFile" name="generate" post="trim"%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("IsMandatory", isMandatory ) %>

<%script type="becontent.AttributeFile" name="AttributeFile" file="<%Cleaner(generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>