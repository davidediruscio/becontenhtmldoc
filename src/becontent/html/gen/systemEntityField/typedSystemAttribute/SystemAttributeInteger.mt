<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.SystemAttributeInteger" name="generate" post="trim()"%>
 <% generateDetailDiv("isMandatory", isMandatory ) %>
 <% generateDetailDiv("isPresented", isPresented ) %>
 <% generateDetailDiv("isPrimaryKey", isPrimaryKey ) %>
 <% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 <% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 <% generateDetailDiv("isTextSearch", isTextSearch ) %>
 <%if (name != null && name != ""){%>
 	<% generateDetailDiv("name", name ) %>
 <%}else{%>
 	<% generateDetailDiv("name", "..." ) %>
 <%}%>
 
<%script type="becontent.SystemAttributeInteger" name="SystemAttributeInteger" file="<%cleaner(current().generateFilename())%>"%>
 <%if (name != null && name != ""){%>
 	<% generateHTML( name.toUpperCase(), current().generate() ) %>
 <%}else{%>
 	<% generateHTML( "...", current().generate() ) %>
 <%}%>