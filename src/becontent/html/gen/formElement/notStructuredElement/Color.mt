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
<%if (name != null && name != ""){%>
	<% generateDetailDiv("name", name ) %>
<%}else{%>
	<% generateDetailDiv("name", "..." ) %>
<%}%>

<%script type="becontent.Color" name="generateFormHTML" post="trim()"%>
<input type="text" name="<%name%> size="7" value="<%defaultColor%>"></input>

<%script type="becontent.Color" name="Color" file="<%cleaner(generateFilename())%>"%>
<%if (name != null && name != ""){%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
<%}else{%>
	<%generateHTML("...", current().generate())%>
<%}%>