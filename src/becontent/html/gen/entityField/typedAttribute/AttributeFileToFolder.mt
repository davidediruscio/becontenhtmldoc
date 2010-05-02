<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeFileToFolder" name="generate" post="trim()"%>
	<% generateDetailDiv("name", name ) %>
	<% generateDetailDiv("isMandatory", isMandatory ) %>
	<%for (fileExtensions){%>
		<% generateReferenceDetailDiv("fileExtensions", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model) %>
	<%}%>

<%script type="becontent.AttributeFileToFolder" name="AttributeFileToFolder" file="<%cleaner(current().generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
