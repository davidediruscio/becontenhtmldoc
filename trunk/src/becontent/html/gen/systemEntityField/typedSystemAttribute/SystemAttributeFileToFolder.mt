<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.SystemAttributeFileToFolder" name="generate" post="trim()"%>
 <%for (fileExtensions) {%>
	<% generateReferenceDetailDiv("fileExtensions", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model) %>
 <%}%>
 <% generateDetailDiv("isMandatory", isMandatory ) %>
 <% generateDetailDiv("isPresented", isPresented ) %>
 <% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 <% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 <% generateDetailDiv("isTextSearch", isTextSearch ) %>
 <% generateDetailDiv("name", name ) %>
 
<%script type="becontent.SystemAttributeFileToFolder" name="SystemAttributeFileToFolder" file="<%cleaner(current().generateFilename())%>"%>
 <% generateHTML( current.eClass().name, current().generate() ) %>