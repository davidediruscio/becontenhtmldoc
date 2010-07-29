<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Trigger" name="generate" post="trim()"%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<%if (name != null && name != ""){%>
		<% generateDetailDiv("name", name ) %>
	<%}else{%>
		<% generateDetailDiv("name", "..." ) %>
	<%}%>
	<% generateDetailDiv("value", value ) %>
	
<%script type="becontent.Trigger" name="Trigger" file="<%cleaner(current().generateFilename())%>"%>
<%if (name != null && name != ""){%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>
<%}else{%>
	<% generateHTML( "...", current().generate() ) %>
<%}%>