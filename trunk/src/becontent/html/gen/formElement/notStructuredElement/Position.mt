<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Position" name="generate" post="trim()"%>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("controlledField", controlledField ) %>
<% generateDetailDiv("size", size ) %>

<% generateDetailDiv("isMandatory", isMandatory ) %>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}%>


<%script type="becontent.Position" name="Position" file="<%Cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>