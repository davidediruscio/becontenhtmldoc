<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Textarea" name="generate" post="trim()"%>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("rows", rows ) %>
<% generateDetailDiv("columns", columns ) %>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}%>


<%script type="becontent.Textarea" name="Textarea" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>