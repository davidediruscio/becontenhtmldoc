<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Skin" name="generate" post="trim"%>
	<% generateDetailDiv("name", name ) %>

<%script type="becontent.Skin" name="Skin" file="<%Cleaner(current().generateFilename())%>"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>


