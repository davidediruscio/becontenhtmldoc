<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeColor" name="generate" post="trim"%>
	<% generateDetailDiv("name", name ) %>
	<% generateDetailDiv("isMandatory", isMandatory ) %>

<%script type="becontent.AttributeColor" name="AttributeColor" file="<%cleaner(current().generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>