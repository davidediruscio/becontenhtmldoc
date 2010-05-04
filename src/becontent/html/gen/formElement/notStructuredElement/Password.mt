<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Password" name="generate" post="trim()"%>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("maxLength", maxLength ) %>
<% generateDetailDiv("size", size ) %>

<%script type="becontent.Password" name="Password" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>