<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeText" name="generate" post="trim()"%>
	<% generateDetailDiv("name", name ) %>
	<% generateDetailDiv("isMandatory", isMandatory ) %>

<%script type="becontent.AttributeText" name="AttributeText" file="<%cleaner(generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>