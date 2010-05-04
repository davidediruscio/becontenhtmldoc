<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>


<%script type="becontent.Color" name="generate" post="trim()"%>	
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("defaultColor", defaultColor ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("name", name ) %>

<%script type="becontent.Color" name="Color" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>