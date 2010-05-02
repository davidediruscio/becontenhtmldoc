<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.SystemAttributeFileToFolder" name="generate" post="trim()"%>
 <% generateDetailDiv("name", name ) %>
 <% generateDetailDiv("isMandatory", isMandatory ) %>
 <% generateDetailDiv("isPresented", isPresented ) %>
 <% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 <% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 <% generateDetailDiv("isTextSearch", isTextSearch ) %>
 <%for (fileExtensions) {%>
	<% generateReferenceDetailDiv("fileExtensions", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model) %>
 <%}%>
 
<%script type="becontent.SystemAttributeFileToFolder" name="SystemAttributeFileToFolder" file="<%cleaner(current().generateFilename())%>"%>
 <% generateHTML( current.eClass().name, current().generate() ) %>