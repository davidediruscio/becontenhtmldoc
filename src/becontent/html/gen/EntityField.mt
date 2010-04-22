<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.EntityField" name="generate" post="trim()"%>
 <% generateDetailDiv("IsPresented", isPresented ) %>
 <% generateDetailDiv("IsSearchPresentationBody", isSearchPresentationBody ) %>
 <% generateDetailDiv("IsSearchPresentationHead", isSearchPresentationHead ) %>
 <% generateDetailDiv("IsTextSearch", isTextSearch ) %>
 
<%script type="becontent.EntityField" name="EntityField" file="<%Cleaner(current().generateFilename())%>"%>
 <% generateHTML( current.eClass().name, current().generate() ) %>