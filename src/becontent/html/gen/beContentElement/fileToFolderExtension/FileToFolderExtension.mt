<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.FileToFolderExtension" name="generate" post="trim"%>
	<% generateDetailDiv("Extension Key", extensionKey) %>
	<% generateDetailDiv("Extension Value", extensionValue) %>
	<% generateDetailDiv("Id Model", _id_model) %>

<%script type="becontent.FileToFolderExtension" name="FileToFolderExtension" file="<%Cleaner(current().generateFilename())%>"%>
	<%generateHTML(_id_model.toUpperCase(), current().generate())%>
