<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeFileToFolder" name="generate" post="trim()"%>
	<%for (fileExtensions){%>
		<% generateReferenceDetailDiv("fileExtensions", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model) %>
	<%}%>
	<% generateDetailDiv("isMandatory", isMandatory ) %>
	<% generateDetailDiv("isPresented", isPresented ) %>
 	<% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 	<% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 	<% generateDetailDiv("isTextSearch", isTextSearch ) %>
	<% generateDetailDiv("name", name ) %>
	
<%script type="becontent.AttributeFileToFolder" name="AttributeFileToFolder" file="<%cleaner(current().generateFilename())%>"%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
