<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.SystemAttributePassword" name="generate" post="trim()"%>
 <% generateDetailDiv("name", name ) %>
 <% generateDetailDiv("isMandatory", isMandatory ) %>
 <% generateDetailDiv("isPresented", isPresented ) %>
 <% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 <% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 <% generateDetailDiv("isTextSearch", isTextSearch ) %>
 
<%script type="becontent.SystemAttributePassword" name="SystemAttributePassword" file="<%cleaner(current().generateFilename())%>"%>
 <% generateHTML( current.eClass().name, current().generate() ) %>