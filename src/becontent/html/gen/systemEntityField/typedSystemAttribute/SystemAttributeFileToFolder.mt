<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.SystemAttributeFileToFolder" name="generate" post="trim()"%>
 <%for (fileExtensions) {%>
 	<%if (current()._id_model != null && current()._id_model != ""){%>
 		<% generateReferenceDetailDiv("fileExtensions", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model) %>
 	<%}else{%>
 		<% generateReferenceDetailDiv("fileExtensions", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "...") %>
 	<%}%>
 <%}%>
 <% generateDetailDiv("isMandatory", isMandatory ) %>
 <% generateDetailDiv("isPresented", isPresented ) %>
 <% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 <% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 <% generateDetailDiv("isTextSearch", isTextSearch ) %>
 <%if (name != null && name != ""){%>
 	<% generateDetailDiv("name", name ) %>
 <%}else{%>
 	<% generateDetailDiv("name", "..." ) %>
 <%}%>
 
<%script type="becontent.SystemAttributeFileToFolder" name="SystemAttributeFileToFolder" file="<%cleaner(current().generateFilename())%>"%>
 <%if (name != null && name != ""){%>
 	<% generateHTML( name.toUpperCase(), current().generate() ) %>
 <%}else{%>
 	<% generateHTML( "...", current().generate() ) %>
 <%}%>