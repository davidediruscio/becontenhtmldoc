<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.LongDate" name="generate" post="trim()"%>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}%>


<%script type="becontent.LongDate" name="LongDate" file="<%Cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>