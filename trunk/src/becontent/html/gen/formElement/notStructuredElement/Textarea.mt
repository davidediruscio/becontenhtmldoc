<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Textarea" name="generate" post="trim()"%>
<% generateDetailDiv("columns", columns ) %>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("label", label ) %>
<%if (name != null && name != ""){%>
	<% generateDetailDiv("name", name ) %>
<%}else{%>
	<% generateDetailDiv("name", "..." ) %>
<%}%>
<% generateDetailDiv("rows", rows ) %>

<%script type="becontent.Textarea" name="Textarea" file="<%cleaner(generateFilename())%>"%>
<%if (name != null && name != ""){%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
<%}else{%>
	<%generateHTML("...", current().generate())%>
<%}%>