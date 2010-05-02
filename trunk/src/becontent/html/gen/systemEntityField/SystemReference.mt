<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.SystemReference" name="generate" post="trim()"%>
 <% generateDetailDiv("name", name ) %>
 <%for (referredEntity) {%> 
		<% generateReferenceDetailDiv("referredEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
 <%}%>
 <% generateDetailDiv("isPresented", isPresented ) %>
 <% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 <% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 <% generateDetailDiv("isTextSearch", isTextSearch ) %>

<%script type="becontent.SystemReference" name="SystemReference" file="<%cleaner(current().generateFilename())%>"%>
 <% generateHTML( current.eClass().name, current().generate() ) %>