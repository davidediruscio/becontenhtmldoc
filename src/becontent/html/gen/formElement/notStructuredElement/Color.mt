<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>


<%script type="becontent.Color" name="generate" post="trim()"%>	
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("defaultColor", defaultColor ) %>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}%>


<%script type="becontent.Color" name="Color" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>