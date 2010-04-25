<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.JoinEntity" name="generate" post="trim"%>
	<% generateDetailDiv("Id_Model", _id_model ) %>
	<% generateReferenceDetailDiv("JoinRule", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%for (referredEntity) {%> 
		<% generateReferenceDetailDiv("ReferredEntity", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>

<%script type="becontent.JoinEntity" name="JoinEntity" file="<%Cleaner(current().generateFilename())%>" %>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>