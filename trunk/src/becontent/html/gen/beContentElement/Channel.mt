<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Channel" name="generate" post="trim"%>
	<% generateDetailDiv("Parameters", parameters ) %>
	<% generateDetailDiv("Id_Model", _id_model ) %>
	<%for (channel) {%> 
		<% generateReferenceDetailDiv("Channel", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>

<%script type="becontent.Channel" name="Channel" file="<%Cleaner(current().generateFilename())%>"%>
	<% generateHTML(_id_model.toUpperCase().toUpperCase(), current().generate() ) %>