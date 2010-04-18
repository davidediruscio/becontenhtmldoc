<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Reference" name="generate" post="trim"%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Class", eContainer().eClass() ) %>
	<% generateReferenceDetailDiv("Referred Entity", Cleaner(current().getGeneratedFilesPath+eContainer().eClass().generateFilename()), current()._id_model ) %>
	
<%script type="becontent.Reference" name="Reference" file="<%Cleaner(current().generateFilename())%>"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>