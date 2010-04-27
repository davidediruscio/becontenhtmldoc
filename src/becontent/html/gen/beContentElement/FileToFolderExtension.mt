<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.FileToFolderExtension" name="generate" post="trim"%>
	<% generateDetailDiv("extensionKey", extensionKey) %>
	<% generateDetailDiv("extensionValue", extensionValue) %>
	<% generateDetailDiv("_id_model", _id_model) %>

<%script type="becontent.FileToFolderExtension" name="FileToFolderExtension" file="<%cleaner(current().generateFilename())%>"%>
	<%generateHTML(_id_model.toUpperCase(), current().generate())%>
