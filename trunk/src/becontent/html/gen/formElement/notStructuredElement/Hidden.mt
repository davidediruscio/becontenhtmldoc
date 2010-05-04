<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Hidden" name="generate" post="trim()"%>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("values", values ) %>

<%script type="becontent.Hidden" name="Hidden" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>