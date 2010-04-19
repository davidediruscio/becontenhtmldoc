<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Link" name="generate" post="trim()"%>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("size", size ) %>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("maxLength", maxLength ) %>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}%>


<%script type="becontent.Link" name="Link" file="<%Cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>