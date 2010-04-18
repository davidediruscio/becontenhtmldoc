<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.EntityField" name="generate" post="trim()"%>
 <% generateDetailDiv("Is Presented", isPresented ) %>
 <% generateDetailDiv("Is Search Presentation Body", isSearchPresentationBody ) %>
 <% generateDetailDiv("Is Search Presentation Head", isSearchPresentationHead ) %>
 <% generateDetailDiv("Is Text Search", isTextSearch ) %>
 
<%script type="becontent.EntityField" name="EntityField" file="<%Cleaner(current().generateFilename())%>"%>
 <% generateHTML( current.eClass().name, current().generate() ) %>