<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Text" name="generate" post="trim()"%>	
<% generateDetailDiv("Name", name ) %>
<% generateDetailDiv("Label", label ) %>
<% generateDetailDiv("Size", size ) %>
<% generateDetailDiv("IsMandatory", isMandatory ) %>
<% generateDetailDiv("MaxLength", maxLength ) %>
<%if helper != null {%>
	<% generateDetailDiv("Helper", helper ) %>
<%}%>


<%script type="becontent.Text" name="Text" file="<%Cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>
