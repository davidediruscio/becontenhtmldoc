<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
import becontent.html.gen.services.FileService
%>

<%script type="becontent.SystemReference" name="generate" post="trim()"%>
 <% generateDetailDiv("isPresented", isPresented ) %>
 <% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 <% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 <% generateDetailDiv("isTextSearch", isTextSearch ) %>
 <%if (name != null && name != ""){%>
 	<% generateDetailDiv("name", name ) %>
 <%}else{%>
 	<% generateDetailDiv("name", "..." ) %>
 <%}%>
 <%for (referredEntity) {%> 
 <%if (current().name != null && current().name != ""){%>
 	<% generateReferenceDetailDiv("referredEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
 <%}else{%>
 	<% generateReferenceDetailDiv("referredEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
 <%}%>
 <%}%>

<%script type="becontent.SystemReference" name="SystemReference" file="<%cleaner(current().generateFilename())%>"%>
<%if (name != null && name != ""){%>
 	<% generateHTML( name.toUpperCase(), current().generate() ) %>
 <%}else{%>
 	<% generateHTML( "...", current().generate() ) %>
 <%}%>