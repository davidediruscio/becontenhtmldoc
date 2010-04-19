<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeDate" name="generate" post="trim"%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Is Mandatory", isMandatory ) %>

<%script type="becontent.AttributeDate" name="AttributeDate" file="<%Cleaner(generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
