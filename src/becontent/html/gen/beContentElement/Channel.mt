<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Channel" name="generate" post="trim()"%>
<%if _id_model != null && _id_model != "" {%>
	<% generateDetailDiv("_id_model", _id_model ) %>
<%}else{%>
	<% generateDetailDiv("_id_model", "..." ) %>
<%}%>
	<%for (channel) {%>
		<%if current().name != null && current().name != "" {%> 
			<% generateReferenceDetailDiv("channel", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("channel", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>	
	<%}%>
	<% generateDetailDiv("parameters", parameters ) %>

<%script type="becontent.Channel" name="Channel" file="<%cleaner(current().generateFilename())%>"%>
<%if _id_model != null && _id_model != "" {%>
	<% generateHTML(_id_model.toUpperCase().toUpperCase(), current().generate() ) %>
<%}else{%>
	<% generateHTML( "...", current().generate() ) %>
<%}%>