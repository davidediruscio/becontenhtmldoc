<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.JoinEntity" name="generate" post="trim"%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<%for (joinRule) {%>		
		<% generateReferenceDetailDiv("joinRule", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<%if referredEntity != null {%> 
		<% generateReferenceDetailDiv("referredEntity", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>

<%script type="becontent.JoinEntity" name="JoinEntity" file="<%Cleaner(current().generateFilename())%>" %>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>