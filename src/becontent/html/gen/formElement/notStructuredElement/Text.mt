<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Text" name="generate" post="trim()"%>	
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("maxLength", maxLength ) %>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("size", size ) %>

<%script type="becontent.Text" name="Text" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>
