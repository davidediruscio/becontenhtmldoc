<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeFileToFolder" name="generate" post="trim"%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("IsMandatory", isMandatory ) %>
	<%for (fileExtensions){%>
		<% generateReferenceDetailDiv("File Extension", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model) %>
	<%}%>

<%script type="becontent.AttributeFileToFolder" name="AttributeFileToFolder" file="<%Cleaner(current().generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
