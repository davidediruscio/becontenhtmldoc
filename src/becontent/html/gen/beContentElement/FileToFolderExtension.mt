<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.FileToFolderExtension" name="generate" post="trim()"%>
<%if _id_model != null && _id_model != "" {%>
	<% generateDetailDiv("_id_model", _id_model ) %>
<%}else{%>
	<% generateDetailDiv("_id_model", "..." ) %>
<%}%>
	<% generateDetailDiv("extensionKey", extensionKey) %>
	<% generateDetailDiv("extensionValue", extensionValue) %>
	
<%script type="becontent.FileToFolderExtension" name="FileToFolderExtension" file="<%cleaner(current().generateFilename())%>"%>
<%if _id_model != null && _id_model != "" {%>
	<%generateHTML(_id_model.toUpperCase(), current().generate())%>
<%}else{%>
	<% generateHTML( "...", current().generate() ) %>
<%}%>