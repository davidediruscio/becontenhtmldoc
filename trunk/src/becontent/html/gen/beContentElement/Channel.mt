<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Channel" name="generate" post="trim()"%>
	<% generateDetailDiv("parameters", parameters ) %>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<%for (channel) {%> 
		<% generateReferenceDetailDiv("channel", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>

<%script type="becontent.Channel" name="Channel" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML(_id_model.toUpperCase().toUpperCase(), current().generate() ) %>